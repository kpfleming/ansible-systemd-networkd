<!-- BEGIN_ANSIBLE_DOCS -->
# Ansible Role: kpfleming.systemd_networkd.tunnel
---
Version: 3.0.1

Role to manage configuration of 'tunnel' devices in systemd-networkd.

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
Manages systemd-networkd tunnel virtual network devices.

|Option|Description|Type|Required|Default|
|---|---|---|---|---|
| suppress_reload | Suppress the reloading of systemd-networkd if changes are made. | bool | no | false |
| systemd_root | Root path of filesystem containing systemd-networkd configuration files. | str | no |  |
| tunnels | Attributes of the tunnels to be managed. | list of dicts of 'tunnels' options | yes |  |

#### Options for main > tunnels
---
|Option|Description|Type|Required|Default|
|---|---|---|---|---|
| name | Name of the network device. | str | yes |  |
| underlying_name | The underlying network. | str | yes |  |
| kind | Type of tunnel. | str | yes |  |
| local | Local address for tunneled packets. | str | no |  |
| remote | Remote address for tunneled packets. | str | no |  |
| ttl | Time-To-Live for tunneled packets. | int | no |  |
| netdev | Attributes of the tunnel network device. | dict of 'netdev' options | no |  |
| match | Matching attributes of the network device. | dict of 'match' options | no |  |

#### Options for main > tunnels > netdev
---
|Option|Description|Type|Required|Default|
|---|---|---|---|---|
| mac_address | MAC address to use on the device. | str | no |  |
| mtu_bytes | The MTU for the tunnel. | str | no |  |

#### Options for main > tunnels > match
---
|Option|Description|Type|Required|Default|
|---|---|---|---|---|
| system | System-specific attributes to be matched. | dict of 'system' options | no |  |

#### Options for main > tunnels > match > system
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

#### Choices for main > tunnels > kind
---
|Choice|
|---|
| gre |
| gretap |
| ip6gre |
| ip6tnl |
| ip6gretap |
| ipip |
| sit |
| vti |
| vti6 |


## Dependencies
---
None.

## Example Playbook
---
```
- hosts: all
  tasks:
    - name: Importing role: kpfleming.systemd_networkd.tunnel
      ansible.builtin.import_role:
        name: kpfleming.systemd_networkd.tunnel
      vars:
        tunnels: # required, type: list
```

## License
---
Apache-2.0

## Author and Project Information
---
Kevin P, Fleming <kevin@km6g.us> @kpfleming:irc/libera.chat

Issues: [tracker](https://github.com/kpfleming/ansible-systemd-networkd/issues)
<!-- END_ANSIBLE_DOCS -->
