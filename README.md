# ansible-systemd-networkd

<a href="https://opensource.org"><img height="150" align="left" src="https://opensource.org/files/OSIApprovedCropped.png" alt="Open Source Initiative Approved License logo"></a>
[![CI](https://github.com/kpfleming/ansible-systemd-networkd/workflows/CI/badge.svg)](https://github.com/kpfleming/ansible-systemd-networkd/actions?query=workflow%3ACI)
[![License - Apache 2.0](https://img.shields.io/badge/License-Apache%202.0-9400d3.svg)](https://spdx.org/licenses/Apache-2.0.html)

This repo contains the `kpfleming.systemd_networkd` Ansible Collection. The collection includes roles to manage
the configuration of various features of systemd-networkd.

Open Source software: [Apache License 2.0](https://spdx.org/licenses/Apache-2.0.html)

## &nbsp;

## Included content

* Roles:
  - kpfleming.systemd_networkd.vlan: manage VLANs

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

## Contributing to this collection

If you want to develop new content for this collection or improve what
is already here, the easiest way to work on the collection is to clone
it into one of the configured
[`COLLECTIONS_PATH`](https://docs.ansible.com/ansible/latest/reference_appendices/config.html#collections-paths),
and work on it there.

You can find more information in the [developer guide for
collections](https://docs.ansible.com/ansible/devel/dev_guide/developing_collections.html#contributing-to-collections),
and in the [Ansible Community
Guide](https://docs.ansible.com/ansible/latest/community/index.html).

## More information

- [Ansible Collection overview](https://github.com/ansible-collections/overview)
- [Ansible User guide](https://docs.ansible.com/ansible/latest/user_guide/index.html)
- [Ansible Developer guide](https://docs.ansible.com/ansible/latest/dev_guide/index.html)
- [Ansible Collections Checklist](https://github.com/ansible-collections/overview/blob/master/collection_requirements.rst)
