## Included content

* Roles:
  - [kpfleming.systemd_networkd.bond](https://github.com/kpfleming/ansible-systemd-networkd/blob/3.1.0/src/roles/bond/README.md): manage bond virtual devices
  - [kpfleming.systemd_networkd.dummy](https://github.com/kpfleming/ansible-systemd-networkd/blob/3.1.0/src/roles/dummy/README.md): manage dummy virtual devices
  - [kpfleming.systemd_networkd.link](https://github.com/kpfleming/ansible-systemd-networkd/blob/3.1.0/src/roles/link/README.md): manage links
  - [kpfleming.systemd_networkd.network](https://github.com/kpfleming/ansible-systemd-networkd/blob/3.1.0/src/roles/network/README.md): manage network devices
  - [kpfleming.systemd_networkd.tunnel](https://github.com/kpfleming/ansible-systemd-networkd/blob/3.1.0/src/roles/tunnel/README.md): manage generic tunnel virtual devices
  - [kpfleming.systemd_networkd.vlan](https://github.com/kpfleming/ansible-systemd-networkd/blob/3.1.0/src/roles/vlan/README.md): manage vlan virtual devices
  - [kpfleming.systemd_networkd.wireguard](https://github.com/kpfleming/ansible-systemd-networkd/blob/3.1.0/src/roles/wireguard/README.md): manage WireGuard virtual devices

## Features of this collection

* Ansible-style arguments with extensive validation

  systemd's argument naming format is not compatible with Ansible best practices, so these roles
  use Ansible-style names and translate them when producing configuration files for systemd-networkd.
  For example, 'MACAddress' (systemd) becomes 'mac_address' (Ansible), 'IPv6ProxyNDPAddress' (systemd)
  becomes 'ipv6_proxy_ndp_address' (Ansible), etc.

  In addition Ansible's role `argument_specs` feature is used to fully document and validate all
  arguments passed to the roles, ensuring that configuration errors are discovered before the roles
  generate configuration files. The documentation linked in the 'Included content' section above is generated
  from the `argument_specs`.

* Composition (one role per systemd-networkd object, usually)

  Rather than providing a higher-level abstraction of a 'network' with all of its possible configuration
  options, these roles provide direct access to the systemd-networkd objects so that the user can configure
  and compose them in any way that they wish. See the 'Examples' section below for a complex real-world
  configuration.

* Use of drop-in directories

  In order to avoid multiple roles attempting to manage content in the same files, all of the roles make
  use of the systemd-networkd 'drop-in directory' feature where it is applicable.

## Using this collection

In order to use this collection, you need to install it using the
`ansible-galaxy` CLI:

    ansible-galaxy collection install kpfleming.systemd_networkd

You can also include it in a `requirements.yml` file and install it
via `ansible-galaxy collection install -r requirements.yml` using the
format:

```yaml
collections:
  - name: kpfleming.systemd_networkd
```
See [Ansible Using collections](https://docs.ansible.com/ansible/latest/user_guide/collections_using.html) for more details.

## Examples

This playbook example combines six of the roles in this collection. It features:

* Renaming of two NICs (matched using their PCI paths) and bonding them using
  802.3ad (LACP).
* Two VLANs on top of of the bonded interface.
* A SIT (IPv6-in-IPv4) tunnel on top of one of the VLANs.
* Three dummy interfaces used for application addresses.
* Various attributes and features of the 'network' role.

```yaml
- name: manage bond devices
  ansible.builtin.include_role:
    name: kpfleming.systemd_networkd.bond
    vars:
      bonds:
        - name: transport
          mode: 802.3ad
          transmit_hash_policy: layer2+3
          mii_monitor_sec: 1s
          up_delay_sec: 5s
          min_links: 1
          members:
            - device:
                path: pci-0000:01:00.0
            - device:
                path: pci-0000:02:00.0

- name: manage VLAN devices
  ansible.builtin.include_role:
    name: kpfleming.systemd_networkd.vlan
    vars:
      vlans:
        - name: fios
          underlying_name: transport
          id: 3000
        - name: corosync
          underlying_name: transport
          id: 101

- name: manage tunnel devices
  ansible.builtin.include_role:
    name: kpfleming.systemd_networkd.tunnel
    vars:
      tunnels:
        - name: hetunnel
          underlying_name: fios
          kind: sit
          local: dhcp4
          remote: 209.51.161.14
          ttl: 255
          netdev:
            mtu_bytes: 1480

- name: manage dummy devices
  ansible.builtin.include_role:
    name: kpfleming.systemd_networkd.dummy
    vars:
      dummies:
        - name: mgmt
        - name: ntp
        - name: dns

- name: manage networks
  ansible.builtin.include_role:
    name: kpfleming.systemd_networkd.network
    vars:
      networks:
        - name: transport
          match:
            device:
              name: transport
          ip_forward: true
          ntp:
            - 2001:470:8afe:255::1
          addresses:
            - address: 192.168.121.3/24
        - name: mgmt
          match:
            device:
              name: mgmt
          addresses:
            - address: 192.168.120.3/32
            - address: 2001:470:8afe:120::3/128
              home_address: true
        - name: dns
          match:
            device:
              name: dns
          link:
            activation_policy: manual
          addresses:
            - address: 192.168.255.2/32
            - address: 2001:470:8afe:255::2/128
        - name: ntp
          match:
            device:
              name: ntp
          link:
            activation_policy: manual
          addresses:
            - address: 192.168.255.1/32
            - address: 2001:470:8afe:255::1/128
        - name: corosync
          match:
            device:
              name: corosync
          link:
            activation_policy: always-up
          dhcp: false
          configure_without_carrier: true
          link_local_addressing: false
          addresses:
            - address: 192.168.101.3/24
        - name: fios
          match:
            device:
              name: fios
          link:
            activation_policy: manual
            mac_address: 56:a2:d0:4b:bb:1f
          dhcp: ipv4
          ip_forward: true
          link_local_addressing: false
          dhcpv4:
            use_hostname: false
            send_release: false
        - name: hetunnel
          match:
            device:
              name: hetunnel
          ip_forward: true
          bind_carrier:
            - fios
          addresses:
            - address: 2001:470:1f06:fab::2/64
          routes:
            - gateway: 2001:470:1f06:fab::1
```

## Contributing to this collection, or reporting issues

This collection is developed in
[this](https://github.com/kpfleming/ansible-systemd-networkd)
repository on GitHub. Issues can be reported in the [issue
tracker](https://github.com/kpfleming/ansible-systemd-networkd/issues).

## More information

Open Source software: [Apache License 2.0](https://spdx.org/licenses/Apache-2.0.html)

Role documentation generated using [ansible-role-docs](https://gitlab.com/kpfleming/ansible-role-docs).
