<!-- BEGIN_ANSIBLE_DOCS -->
# Ansible Role: kpfleming.systemd_networkd.wireguard_tunnel
---
Version: 0.0.0

Role to manage configuration of WireGuard 'tunnel' devices in systemd-networkd.

Tags: systemd, network

## Requirements
---
| Platform | Versions |
| -------- | -------- |
| GenericLinux |  |

## Role Arguments
---
### Entrypoint: main
---
Manages systemd-networkd WireGuard tunnel virtual network devices.

|Option|Description|Type|Required|Default|
|---|---|---|---|---|
| suppress_reload | Suppress the reloading of systemd-networkd if changes are made. | bool | no | false |
| suppress_restart | Suppress the restarting of systemd-networkd if changes are made to the netdev configuration. | bool | no | false |
| systemd_root | Root path of filesystem containing systemd-networkd configuration files. | str | no |  |
| wireguard_tunnels | Attributes of the tunnels to be managed. | list of dicts of 'wireguard_tunnels' options | yes |  |

#### Options for main > wireguard_tunnels
---
|Option|Description|Type|Required|Default|
|---|---|---|---|---|
| name | Name of the network device. | str | yes |  |
| underlying_name | The underlying network. | str | no |  |
| netdev | Attributes of the tunnel network device. | dict of 'netdev' options | no |  |
| match | Matching attributes of the network device. | dict of 'match' options | no |  |
| private_key | Base64-encoded private key. | str | no |  |
| private_key_file | Path to file containing a base64-encoded private key. | path | no |  |
| listen_port | UDP Port to listen for incoming traffic. If not specified, a port will be chosen based on the interface name. | int | no |  |
| firewall_mark | Mark to be set on outgoing packets from this interface. | int | no |  |
| route_table | Route table name (from networkd.conf), number, or predefined name ("default", "main", or "local"). | str | no |  |
| route_metric | Metric value for routes added when route_table is specified. | int | no |  |
| peers | Attributes of the peers for the tunnel. | list of dicts of 'peers' options | yes |  |

#### Options for main > wireguard_tunnels > netdev
---
|Option|Description|Type|Required|Default|
|---|---|---|---|---|
| mac_address | MAC address to use on the device. | str | no |  |
| mtu_bytes | The MTU for the tunnel. | str | no |  |

#### Options for main > wireguard_tunnels > match
---
|Option|Description|Type|Required|Default|
|---|---|---|---|---|
| system | System-specific attributes to be matched. | dict of 'system' options | no |  |

#### Options for main > wireguard_tunnels > match > system
---
|Option|Description|Type|Required|Default|
|---|---|---|---|---|
| architecture | Match system architecture. | str | no |  |
| credential | Match service credential. | str | no |  |
| firmware | Match system firmware. | str | no |  |
| host | Match hostname or machine ID. | str | no |  |
| kernel_command_line | Match kernel command line option presence. | str | no |  |
| kernel_version | Match kernel version expression. | str | no |  |
| virtualization | Match virtualization type. | str | no |  |

#### Options for main > wireguard_tunnels > peers
---
|Option|Description|Type|Required|Default|
|---|---|---|---|---|
| name | Name of the peer (will only be used as a comment in the configuration file). | str | no |  |
| public_key | Base64-encoded public key of the peer. | str | yes |  |
| preshared_key | Base64-encoded preshared key with the peer. | str | no |  |
| preshared_key_file | Path to file containing a base64-encoded preshared key with the peer. | path | no |  |
| endpoint | Initial address and port to be used for traffic to this peer. | str | no |  |
| persistent_keepalive | Interval, in seconds, to send empty-but-authenticated packets to this peer. | int | no |  |
| allowed_ips | Addresses, with optional netmasks, which the peer is allowed to use for sending traffic, and for which traffic will be sent to the peer. | list of 'str' | yes |  |
| route_table | Route table name (from networkd.conf), number, or predefined name ("default", "main", or "local").  Overrides the setting from the tunnel, if specified. | str | no |  |
| route_metric | Metric value for routes added when route_table is specified.  Overrides the setting from the tunnel, if specified. | int | no |  |


## Dependencies
---
None.

## Example Playbook
---
```
- hosts: all
  tasks:
    - name: Importing role: kpfleming.systemd_networkd.wireguard_tunnel
      ansible.builtin.import_role:
        name: kpfleming.systemd_networkd.wireguard_tunnel
      vars:
        wireguard_tunnels: # required, type: list
```

## License
---
Apache-2.0

## Author and Project Information
---
Kevin P, Fleming <kevin@km6g.us> @kpfleming:irc/libera.chat

Issues: [tracker](https://github.com/kpfleming/ansible-systemd-networkd/issues)
<!-- END_ANSIBLE_DOCS -->
