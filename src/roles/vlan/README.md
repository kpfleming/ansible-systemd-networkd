<!-- BEGIN_ANSIBLE_DOCS -->
# Ansible Role: kpfleming.systemd_networkd.vlan
---
Version: 0.0.0

Role to manage configuration of 'vlan' devices in systemd-networkd.

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
Manages systemd-networkd VLAN virtual network devices.

|Option|Description|Type|Required|Default|
|---|---|---|---|---|
| suppress_reload | Suppress the reloading of systemd-networkd if changes are made. | bool | no | false |
| systemd_root | Root path of filesystem containing systemd-networkd configuration files. | str | no |  |
| vlans | Attributes of the devices to be managed. | list of dicts of 'vlans' options | yes |  |

#### Options for main > vlans
---
|Option|Description|Type|Required|Default|
|---|---|---|---|---|
| name | Name of the network device. | str | yes |  |
| id | The VLAN ID number (1-4095). | int | yes |  |
| underlying_name | The underlying network. | str | yes |  |
| match | Matching attributes of the network device. | dict of 'match' options | no |  |

#### Options for main > vlans > match
---
|Option|Description|Type|Required|Default|
|---|---|---|---|---|
| system | System-specific attributes to be matched. | dict of 'system' options | no |  |

#### Options for main > vlans > match > system
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


## Dependencies
---
None.

## Example Playbook
---
```
- hosts: all
  tasks:
    - name: Importing role: kpfleming.systemd_networkd.vlan
      ansible.builtin.import_role:
        name: kpfleming.systemd_networkd.vlan
      vars:
        vlans: # required, type: list
```

## License
---
Apache-2.0

## Author and Project Information
---
Kevin P, Fleming <kevin@km6g.us> @kpfleming:irc/libera.chat

Issues: [tracker](https://github.com/kpfleming/ansible-systemd-networkd/issues)
<!-- END_ANSIBLE_DOCS -->
