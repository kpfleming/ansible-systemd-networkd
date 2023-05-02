<!-- BEGIN_ANSIBLE_DOCS -->
# Ansible Role: kpfleming.systemd_networkd.link
---
Version: 1.2.1

Role to manage configuration of 'link' devices in systemd-networkd.

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
Manages systemd-networkd links.

|Option|Description|Type|Required|Default|
|---|---|---|---|---|
| suppress_reload | Suppress the reloading of systemd-networkd if changes are made. | bool | no | false |
| systemd_root | Root path of filesystem containing systemd-networkd configuration files. | str | no |  |
| links | Attributes of the links to be managed. | list of dicts of 'links' options | yes |  |

#### Options for main > links
---
|Option|Description|Type|Required|Default|
|---|---|---|---|---|
| name | Name to set on the link. | str | no |  |
| mac_address_policy | Policy for setting the MAC address of the link. | str | no |  |
| name_policy | Policy for setting the name of the link. | str | no |  |
| mtu_bytes | The MTU for the link. | str | no |  |
| match | Matching attributes of the link. | dict of 'match' options | no |  |

#### Options for main > links > match
---
|Option|Description|Type|Required|Default|
|---|---|---|---|---|
| device | Device-specific attributes to be matched. | dict of 'device' options | no |  |
| system | System-specific attributes to be matched. | dict of 'system' options | no |  |

#### Options for main > links > match > device
---
|Option|Description|Type|Required|Default|
|---|---|---|---|---|
| driver | Match udev ID_NET_DRIVER. | list of 'str' | no |  |
| kind | Match netlink IFLA_INFO_KIND. | list of 'str' | no |  |
| mac_address | Match current MAC address. | list of 'str' | no |  |
| original_name | Match udev INTERFACE. | list of 'str' | no |  |
| path | Match udev ID_PATH. | list of 'str' | no |  |
| permanent_mac_address | Match permanent MAC address. | list of 'str' | no |  |
| property | Match udev property. | list of 'str' | no |  |
| type | Match udev DEVTYPE. | list of 'str' | no |  |

#### Options for main > links > match > system
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

#### Choices for main > links > mac_address_policy
---
|Choice|
|---|
| persistent |
| random |
| none |

#### Choices for main > links > name_policy
---
|Choice|
|---|
| kernel |
| database |
| onboard |
| slot |
| path |
| mac |
| keep |


## Dependencies
---
None.

## Example Playbook
---
```
- hosts: all
  tasks:
    - name: Importing role: kpfleming.systemd_networkd.link
      ansible.builtin.import_role:
        name: kpfleming.systemd_networkd.link
      vars:
        links: # required, type: list
```

## License
---
Apache-2.0

## Author and Project Information
---
Kevin P, Fleming <kevin@km6g.us> @kpfleming:irc/libera.chat

Issues: [tracker](https://github.com/kpfleming/ansible-systemd-networkd/issues)
<!-- END_ANSIBLE_DOCS -->
