# Changelog

All notable changes to this project will be documented in this file.

The format is based on [*Keep a
Changelog*](https://keepachangelog.com/en/1.0.0/) and this project
adheres to [*Calendar Versioning*](https://calver.org/).

The **first number** of the version is the 2-digit year.

The **second number** is incremented with each release, starting at 1
for each year.

The **third number** is for fixes made against older releases (only
for emergencies or non-content releases).

## [Unreleased]

### Breaking Changes:

- All roles now require that 'top-level' settings for the role be
  listed in a mapping with the role's name; see README.md for
  examples.

- Some attributes in the 'network' role were renamed for consistency:
  - 'dhcpv4' -> 'dhcp_v4'
  - 'dhcpv6' -> 'dhcp_v6'
  - 'ipv6acceptra' -> 'ipv6_accept_ra'

### Added

- Added 'bridge' role.
- New features in 'network' role:
  - Added 'dhcp_prefix_delegation'.
  - Added 'dhcp_server'.
  - Added 'dhcp_server_static_leases'.
  - Added 'ipv6_prefixes'.
  - Added 'ipv6_route_prefixes'.
  - Added 'ipv6_send_ra'.
  - Added 'nft_set'.

### Changed

- Redesigned the internal templating system for improved
  maintainability and consistency.

## [25.6.0] - 2025-07-27

### Breaking Changes:

- Use proper spelling of 'drop-in', which resulted in a parameter name
  changing from `dropin_for` to `drop_in_for`.

### Changed

- Correct casing of 'IPv6AcceptRA' in network role.

## [25.5.0] - 2025-06-26

### Added

- Added Ubuntu to the list of distributions which require a reboot
  after changes are made by the 'link' role (issue 49).

## [25.4.0] - 2025-06-23

### Changed

- Fixed handlers in 'bond' and 'link' roles to work properly on
  non-Debian systems (issue 49).

## [25.3.0] - 2025-02-15

### Added

- Added `routing_policy_rules` block to the `network` role.
- Added `table` parameter to the options of the elements of `routes` in
  the `network` role.

## [25.2.0] - 2025-01-11

### Added

- Added 'ipv6_duplicate_address_detection' parameter to the 'network' role.

## [25.1.0] - 2025-01-11

### Added

- Added 'duplicate_address_detection' parameter in the 'network' role.

### Changed

- Updated allowed values for 'keep_configuration' in 'network' role,
  to be compatible with systemd version 256 and higher.

## [24.2.0] - 2024-12-18

### Added

- Added testing against Python 3.13.
- Added 'global' role for global configuration.
- Added 'ipv4_forwarding' and 'ipv6_forwarding' parameters, available
  in 'global' and 'network' roles (note: these parameters are only
  usable with systemd version 256 and higher).

## [24.1.1] - 2024-02-17

No content changes, tag created for updated docsite publishing workflow.

## [24.1.0] - 2024-02-17

### Changed

- Switched to fork of `j2cli` for rendering Galaxy metadata YAML file
  and role `vars` files (no behavioral changes).

- Switched from `j2cli` to `jinjanator` for template rendering.

- Added support for the 'CAKE' queueing discipline to the 'network' role.

- Switched to CalVer.

## [3.2.3] - 2023-07-02

No content changes, tag created for new docsite publishing workflow.

## [3.2.2] - 2023-07-02

No content changes, tag created for new docsite publishing workflow.

## [3.2.1] - 2023-06-25

Changes:

* Re-added README files for roles to satisfy Galaxy requirements.

## [3.2.0] - 2023-06-25

Changes:

* Switched to antsibull-docs for generating browseable documentation.

## [3.1.0] - 2023-05-18

Additions:

* network: Added 'required_family_for_online' parameter.

Changes:

* network: Corrected definition of 'required_for_online' parameter.

## [3.0.1] - 2023-05-14

Changes:

* wireguard: Remove reference to undefined variable.

## [3.0.0] - 2023-05-08

Breaking Changes:

* wireguard: Renamed from 'wireguard_tunnel' as systemd-networkd does
  not consider this interface type a 'tunnel'.

Changes:

* wireguard_tunnel: Removed unnecessary drop-in for 'Tunnel' assignment.

## [2.0.0] - 2023-05-03

Additions:

* New role: `wireguard_tunnel`, for managing WireGuard tunnel devices.

## [1.2.1] - 2023-05-02

Breaking Changes:

* Ensure that 'other' permissions are removed from existing files and
  directories.

## [1.2.0] - 2023-05-02

Breaking Changes:

* All configuration files and directories are now group-owned by
  'systemd-network' and are not readable by any users outside of that
  group (and root).

## [1.1.0] - 2023-01-07

Changes:

* Use explicit privilege escalation where required.

## [1.0.1] - 2022-12-31

Changes:

* Fix bugs in Galaxy packaging process.

## [1.0.0] - 2022-12-28

First release!

[unreleased]: https://github.com/kpfleming/ansible-systemd-networkd/compare/24.1.1...HEAD
[24.1.1]: https://github.com/kpfleming/ansible-systemd-networkd/compare/24.1.0...24.1.1
[24.1.0]: https://github.com/kpfleming/ansible-systemd-networkd/compare/3.2.3...24.1.0
[3.2.3]: https://github.com/kpfleming/ansible-systemd-networkd/compare/3.2.2...3.2.3
[3.2.2]: https://github.com/kpfleming/ansible-systemd-networkd/compare/3.2.1...3.2.2
[3.2.1]: https://github.com/kpfleming/ansible-systemd-networkd/compare/3.2.0...3.2.1
[3.2.0]: https://github.com/kpfleming/ansible-systemd-networkd/compare/3.1.0...3.2.0
[3.1.0]: https://github.com/kpfleming/ansible-systemd-networkd/compare/3.0.1...3.1.0
[3.0.1]: https://github.com/kpfleming/ansible-systemd-networkd/compare/3.0.0...3.0.1
[3.0.0]: https://github.com/kpfleming/ansible-systemd-networkd/compare/2.0.0...3.0.0
[2.0.0]: https://github.com/kpfleming/ansible-systemd-networkd/compare/1.2.1...2.0.0
[1.2.1]: https://github.com/kpfleming/ansible-systemd-networkd/compare/1.2.0...1.2.1
[1.2.0]: https://github.com/kpfleming/ansible-systemd-networkd/compare/1.1.0...1.2.0
[1.1.0]: https://github.com/kpfleming/ansible-systemd-networkd/compare/1.0.1...1.1.0
[1.0.1]: https://github.com/kpfleming/ansible-systemd-networkd/compare/1.0.0...1.0.1
[1.0.0]: https://github.com/kpfleming/ansible-systemd-networkd/compare/4b825dc642cb6eb9a060e54bf8d69288fbee4904...1.0.0
