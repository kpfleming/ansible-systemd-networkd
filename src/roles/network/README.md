<!-- BEGIN_ANSIBLE_DOCS -->
# Ansible Role: kpfleming.systemd_networkd.network
---
Version: 0.0.0

Role to manage configuration of 'network' devices in systemd-networkd.

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
Manages systemd-networkd networks.

|Option|Description|Type|Required|Default|
|---|---|---|---|---|
| suppress_reload | Suppress the reloading of systemd-networkd if changes are made. | bool | no | false |
| systemd_root | Root path of filesystem containing systemd-networkd configuration files. | str | no |  |
| dropin_for | Name of network to which this configuration should be applied as a dropin. | str | no |  |
| networks | Attributes of the networks to be managed. | list of dicts of 'networks' options | yes |  |

#### Options for main > networks
---
|Option|Description|Type|Required|Default|
|---|---|---|---|---|
| name | Name of the network. | str | yes |  |
| dhcp | Configure DHCP clients on the network. | str | no |  |
| link_local_addressing | Configure link-local addressing on the network. | str | no |  |
| lldp | Configure LLDP reception on the network. | str | no |  |
| emit_lldp | Configure LLDP emission on the network. | str | no |  |
| ip_forward | Configure IP forwarding (system-wide). | str | no |  |
| ipv6_proxy_ndp | Configure Proxy NDP support on the network. | bool | no | false |
| configure_without_carrier | Allow network configuration without carrier. | bool | no | false |
| keep_configuration | Manage configuration when network is stopped. | str | no |  |
| ipv6_accept_ra | Whether Router Advertisements should be accepted on the network. | bool | no | false |
| bind_carrier | Bind carrier status to other networks. | list of 'str' | no |  |
| dns | Configure DNS servers on the network. | list of 'str' | no |  |
| ntp | Configure NTP servers on the network. | list of 'str' | no |  |
| ipv6_proxy_ndp_address | Configure Proxy NDP addresses on the network. | list of 'str' | no |  |
| link | Attributes of the link used by the network. | dict of 'link' options | no |  |
| addresses | Addresses to be used on the network. | list of dicts of 'addresses' options | no |  |
| routes | Routes to be used by the network. | list of dicts of 'routes' options | no |  |
| dhcpv4 | Attributes of the DHCPv4 client on the network. | dict of 'dhcpv4' options | no |  |
| dhcpv6 | Attributes of the DHCPv6 client on the network. | dict of 'dhcpv6' options | no |  |
| ipv6acceptra | Attributes of the IPv6 RA client on the network. | dict of 'ipv6acceptra' options | no |  |
| match | Matching attributes of the network. | dict of 'match' options | no |  |

#### Options for main > networks > link
---
|Option|Description|Type|Required|Default|
|---|---|---|---|---|
| mac_address | The MAC address to be used for the network. | str | no |  |
| mtu_bytes | The MTU for the network. | str | no |  |
| required_for_online | Whether the network is included in the 'online' status determination. | str | no |  |
| activation_policy | How the network should or should not be activated. | str | no |  |

#### Options for main > networks > addresses
---
|Option|Description|Type|Required|Default|
|---|---|---|---|---|
| address | An IPv4 or IPv6 address. | str | no |  |
| peer | The address of the peer on a point-to-point network. | str | no |  |
| broadcast | The broadcast address of the network. | str | no |  |
| home_address | Whether this network is the system's home address. | bool | no | false |

#### Options for main > networks > routes
---
|Option|Description|Type|Required|Default|
|---|---|---|---|---|
| gateway | IPv4 or IPv6 address of next-hop router. | str | no |  |
| destination | IPv4 or IPv6 subnet which can be reached through gateway. | str | no |  |
| scope | Scope of the route (IPv4 only). | str | no |  |
| source | IPv4 or IPv6 subnet matched against source addresses for selection of this route. | str | no |  |
| metric | The route metric. | str | no |  |
| preferred_source | IPv4 or IPv6 address to be preferred when sending packets via this route. | str | no |  |
| type | Type of route. | str | no |  |
| mtu_bytes | The MTU to be applied to this route. | str | no |  |

#### Options for main > networks > dhcpv4
---
|Option|Description|Type|Required|Default|
|---|---|---|---|---|
| send_hostname | Whether local hostname should be sent to the DHCP server. | bool | no | false |
| hostname | Hostname to be sent. | str | no |  |
| client_identifier | Method used to construct the Client Identifier. | str | no |  |
| use_dns | Whether DNS server(s) provided by the DHCP server should be used. | bool | no | false |
| routes_to_dns | Whether routes to the provided DNS server(s) should be added to the routing table. | bool | no | false |
| use_ntp | Whether NTP server(s) provided by the DHCP server should be used. | bool | no | false |
| routes_to_ntp | Whether routes to the provided NTP server(s) should be added to the routing table. | bool | no | false |
| use_hostname | Whether the hostname provided by the DHCP server should be used. | bool | no | false |
| use_routes | Whether routes provided by the DHCP server should be added to the routing table. | bool | no | false |
| use_gateway | Whether the default route provided by the DHCP server should be added to the routing table. | bool | no | false |
| send_release | Whether an assigned address should be released when the network is stopped. | bool | no | false |

#### Options for main > networks > dhcpv6
---
|Option|Description|Type|Required|Default|
|---|---|---|---|---|
| use_dns | Whether DNS server(s) provided by the DHCP server should be used. | bool | no | false |
| use_ntp | Whether NTP server(s) provided by the DHCP server should be used. | bool | no | false |
| use_hostname | Whether the hostname provided by the DHCP server should be used. | bool | no | false |
| without_ra | Whether the client should be started even if an RA does not indicate it is needed. | str | no |  |

#### Options for main > networks > ipv6acceptra
---
|Option|Description|Type|Required|Default|
|---|---|---|---|---|
| token | Mode, and pattern, used to generate a SLAAC address. | str | no |  |
| use_dns | Whether DNS server(s) provided by the RA should be used. | bool | no | false |
| use_mtu | Whether the MTU provided by the RA should be used. | bool | no | false |
| use_gateway | Whether the default route provided by the RA should be added to the routing table. | bool | no | false |

#### Options for main > networks > match
---
|Option|Description|Type|Required|Default|
|---|---|---|---|---|
| device | Device-specific attributes to be matched. | dict of 'device' options | no |  |
| system | System-specific attributes to be matched. | dict of 'system' options | no |  |

#### Options for main > networks > match > device
---
|Option|Description|Type|Required|Default|
|---|---|---|---|---|
| driver | Match udev ID_NET_DRIVER. | list of 'str' | no |  |
| kind | Match netlink IFLA_INFO_KIND. | list of 'str' | no |  |
| mac_address | Match current MAC address. | list of 'str' | no |  |
| name | Match udev INTERFACE. | list of 'str' | no |  |
| path | Match udev ID_PATH. | list of 'str' | no |  |
| permanent_mac_address | Match permanent MAC address. | list of 'str' | no |  |
| property | Match udev property. | list of 'str' | no |  |
| type | Match udev DEVTYPE. | list of 'str' | no |  |

#### Options for main > networks > match > system
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

#### Choices for main > networks > dhcp
---
|Choice|
|---|
| ipv4 |
| ipv6 |
| True |
| False |

#### Choices for main > networks > link_local_addressing
---
|Choice|
|---|
| ipv4 |
| ipv6 |
| True |
| False |

#### Choices for main > networks > lldp
---
|Choice|
|---|
| routers-only |
| True |
| False |

#### Choices for main > networks > emit_lldp
---
|Choice|
|---|
| nearest-bridge |
| True |
| False |

#### Choices for main > networks > ip_forward
---
|Choice|
|---|
| ipv4 |
| ipv6 |
| True |
| False |

#### Choices for main > networks > keep_configuration
---
|Choice|
|---|
| static |
| dhcp |
| dhcp-on-stop |
| True |
| False |

#### Choices for main > networks > link > required_for_online
---
|Choice|
|---|
| any |
| both |
| ipv4 |
| ipv6 |

#### Choices for main > networks > link > activation_policy
---
|Choice|
|---|
| up |
| always-up |
| manual |
| down |
| always-down |

#### Choices for main > networks > routes > scope
---
|Choice|
|---|
| global |
| site |
| link |
| host |
| nowhere |

#### Choices for main > networks > routes > type
---
|Choice|
|---|
| unicast |
| local |
| broadcast |
| anycast |
| multicast |
| blackhole |
| unreachable |
| prohibit |
| throw |
| nat |
| xresolve |

#### Choices for main > networks > dhcpv4 > client_identifier
---
|Choice|
|---|
| mac |
| duid |
| duid-only |

#### Choices for main > networks > dhcpv6 > without_ra
---
|Choice|
|---|
| False |
| solicit |
| information-request |


## Dependencies
---
None.

## Example Playbook
---
```
- hosts: all
  tasks:
    - name: Importing role: kpfleming.systemd_networkd.network
      ansible.builtin.import_role:
        name: kpfleming.systemd_networkd.network
      vars:
        networks: # required, type: list
```

## License
---
Apache-2.0

## Author and Project Information
---
Kevin P, Fleming <kevin@km6g.us> @kpfleming:irc/libera.chat

Issues: [tracker](https://github.com/kpfleming/ansible-systemd-networkd/issues)
<!-- END_ANSIBLE_DOCS -->
