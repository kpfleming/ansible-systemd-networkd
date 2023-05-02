<!-- BEGIN_ANSIBLE_DOCS -->
# Ansible Role: kpfleming.systemd_networkd.bond
---
Version: 1.2.0

Role to manage configuration of 'bond' devices in systemd-networkd.

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
Manages systemd-networkd bonded network devices.

|Option|Description|Type|Required|Default|
|---|---|---|---|---|
| suppress_reload | Suppress the reloading of systemd-networkd if changes are made. | bool | no | false |
| systemd_root | Root path of filesystem containing systemd-networkd configuration files. | str | no |  |
| bonds | Attributes of the bond devices to be managed. | list of dicts of 'bonds' options | yes |  |

#### Options for main > bonds
---
|Option|Description|Type|Required|Default|
|---|---|---|---|---|
| name | Name of the network device. | str | yes |  |
| mode | Bonding mode. | str | no |  |
| transmit_hash_policy | Policy for member selection during transmit. | str | no |  |
| lacp_transmit_rate | LACP data unit transmission rate (only used in 802.3ad mode). | str | no |  |
| mii_monitor_sec | Frequency of MII link monitoring. | str | no |  |
| min_links | Minimum number of active members for the device to report that it 'has carrier'. | int | no |  |
| up_delay_sec | Delay between the minimum number of members reaching 'link up' and 'link up' being reported for the bond. | str | no |  |
| down_delay_sec | Delay between the minimum number of members reaching 'link down' and 'link down' being reported for the bond. | str | no |  |
| netdev | Attributes of the bond network device. | dict of 'netdev' options | no |  |
| match | Matching attributes of the bond network device. | dict of 'match' options | no |  |
| members | Matching attributes of the bond's member interfaces. | list of dicts of 'members' options | yes |  |

#### Options for main > bonds > netdev
---
|Option|Description|Type|Required|Default|
|---|---|---|---|---|
| mac_address | MAC address to use on the device. | str | no |  |
| mtu_bytes | The MTU for the tunnel. | str | no |  |

#### Options for main > bonds > match
---
|Option|Description|Type|Required|Default|
|---|---|---|---|---|
| system | System-specific attributes to be matched. | dict of 'system' options | no |  |

#### Options for main > bonds > match > system
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

#### Options for main > bonds > members
---
|Option|Description|Type|Required|Default|
|---|---|---|---|---|
| device | Device-specific attributes to be matched. | dict of 'device' options | no |  |
| system | System-specific attributes to be matched. | dict of 'system' options | no |  |

#### Options for main > bonds > members > device
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

#### Options for main > bonds > members > system
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

#### Choices for main > bonds > mode
---
|Choice|
|---|
| balance-rr |
| active-backup |
| balance-xor |
| broadcast |
| 802.3ad |
| balance-tlb |
| balance-alb |

#### Choices for main > bonds > transmit_hash_policy
---
|Choice|
|---|
| layer2 |
| layer3+4 |
| layer2+3 |
| encap2+3 |
| encap3+4 |

#### Choices for main > bonds > lacp_transmit_rate
---
|Choice|
|---|
| slow |
| fast |


## Dependencies
---
None.

## Example Playbook
---
```
- hosts: all
  tasks:
    - name: Importing role: kpfleming.systemd_networkd.bond
      ansible.builtin.import_role:
        name: kpfleming.systemd_networkd.bond
      vars:
        bonds: # required, type: list
```

## License
---
Apache-2.0

## Author and Project Information
---
Kevin P, Fleming <kevin@km6g.us> @kpfleming:irc/libera.chat

Issues: [tracker](https://github.com/kpfleming/ansible-systemd-networkd/issues)
<!-- END_ANSIBLE_DOCS -->
