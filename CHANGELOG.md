# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

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

[unreleased]: https://github.com/kpfleming/ansible-systemd-networkd/compare/1.2.1...HEAD
[1.2.1]: https://github.com/kpfleming/ansible-systemd-networkd/compare/1.2.0...1.2.1
[1.2.0]: https://github.com/kpfleming/ansible-systemd-networkd/compare/1.1.0...1.2.0
[1.1.0]: https://github.com/kpfleming/ansible-systemd-networkd/compare/1.0.1...1.1.0
[1.0.1]: https://github.com/kpfleming/ansible-systemd-networkd/compare/1.0.0...1.0.1
[1.0.0]: https://github.com/kpfleming/ansible-systemd-networkd/compare/4b825dc642cb6eb9a060e54bf8d69288fbee4904...1.0.0
