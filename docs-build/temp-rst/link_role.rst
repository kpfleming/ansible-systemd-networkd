
.. Document meta

:orphan:

.. role:: ansible-attribute-support-label
.. role:: ansible-attribute-support-property
.. role:: ansible-attribute-support-full
.. role:: ansible-attribute-support-partial
.. role:: ansible-attribute-support-none
.. role:: ansible-attribute-support-na
.. role:: ansible-option-type
.. role:: ansible-option-elements
.. role:: ansible-option-required
.. role:: ansible-option-versionadded
.. role:: ansible-option-aliases
.. role:: ansible-option-choices
.. role:: ansible-option-choices-default-mark
.. role:: ansible-option-default-bold

.. Anchors

.. _ansible_collections.kpfleming.systemd_networkd.link_role:

.. Anchors: aliases


.. Title

kpfleming.systemd_networkd.link role -- Manages systemd-networkd links.
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. Collection note

.. note::
    This role is part of the `kpfleming.systemd_networkd collection <https://galaxy.ansible.com/kpfleming/systemd_networkd>`_ (version 3.2.3).

    To install it use: :code:`ansible-galaxy collection install kpfleming.systemd\_networkd`.

    To use it in a playbook, specify: :code:`kpfleming.systemd_networkd.link`.

.. contents::
   :local:
   :depth: 2


.. Entry point title

Entry point ``main`` -- Manages systemd-networkd links.
-------------------------------------------------------

.. version_added


.. Deprecated


Synopsis
^^^^^^^^

.. Description

- This role will create (or update) one item in /etc/systemd/network for
  each specified link: a .link file for the link.

- On Debian and Debian-derivative systems the .link files are
  copied into the initramfs by the \`update-initramfs\` tool, which
  means that the system must be rebooted for changes in those
  files to take effect. In this situation the role will set a fact
  named 'systemd\_networkd\_link\_reboot\_required' and the system
  should be rebooted before any additional configuration of the
  links is attempted.

- Detailed descriptions of parameters and their behavior can be found in 'man systemd.link'.

- Sets fact named 'systemd\_networkd\_link\_changed' to either true or false to indicate whether
  any changes were made.


.. Requirements


.. Options

Parameters
^^^^^^^^^^

.. rst-class:: ansible-option-table

.. list-table::
  :width: 100%
  :widths: auto
  :header-rows: 1

  * - Parameter
    - Comments

  * - .. raw:: html

        <div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--links"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.link_role__parameter-main__links:

      .. rst-class:: ansible-option-title

      **links**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--links" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`list` / :ansible-option-elements:`elements=dictionary` / :ansible-option-required:`required`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-cell">

      Attributes of the links to be managed.


      .. raw:: html

        </div>
    
  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--links/mac_address_policy"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.link_role__parameter-main__links/mac_address_policy:

      .. rst-class:: ansible-option-title

      **mac_address_policy**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--links/mac_address_policy" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Policy for setting the MAC address of the link.


      .. rst-class:: ansible-option-line

      :ansible-option-choices:`Choices:`

      - :ansible-option-choices-entry:`"persistent"`
      - :ansible-option-choices-entry:`"random"`
      - :ansible-option-choices-entry:`"none"`


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--links/match"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.link_role__parameter-main__links/match:

      .. rst-class:: ansible-option-title

      **match**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--links/match" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`dictionary`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Matching attributes of the link.


      .. raw:: html

        </div>
    
  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--links/match/device"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.link_role__parameter-main__links/match/device:

      .. rst-class:: ansible-option-title

      **device**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--links/match/device" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`dictionary`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Device-specific attributes to be matched.


      .. raw:: html

        </div>
    
  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--links/match/device/driver"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.link_role__parameter-main__links/match/device/driver:

      .. rst-class:: ansible-option-title

      **driver**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--links/match/device/driver" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`list` / :ansible-option-elements:`elements=string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Match udev ID\_NET\_DRIVER.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--links/match/device/kind"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.link_role__parameter-main__links/match/device/kind:

      .. rst-class:: ansible-option-title

      **kind**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--links/match/device/kind" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`list` / :ansible-option-elements:`elements=string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Match netlink IFLA\_INFO\_KIND.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--links/match/device/mac_address"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.link_role__parameter-main__links/match/device/mac_address:

      .. rst-class:: ansible-option-title

      **mac_address**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--links/match/device/mac_address" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`list` / :ansible-option-elements:`elements=string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Match current MAC address.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--links/match/device/original_name"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.link_role__parameter-main__links/match/device/original_name:

      .. rst-class:: ansible-option-title

      **original_name**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--links/match/device/original_name" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`list` / :ansible-option-elements:`elements=string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Match udev INTERFACE.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--links/match/device/path"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.link_role__parameter-main__links/match/device/path:

      .. rst-class:: ansible-option-title

      **path**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--links/match/device/path" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`list` / :ansible-option-elements:`elements=string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Match udev ID\_PATH.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--links/match/device/permanent_mac_address"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.link_role__parameter-main__links/match/device/permanent_mac_address:

      .. rst-class:: ansible-option-title

      **permanent_mac_address**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--links/match/device/permanent_mac_address" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`list` / :ansible-option-elements:`elements=string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Match permanent MAC address.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--links/match/device/property"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.link_role__parameter-main__links/match/device/property:

      .. rst-class:: ansible-option-title

      **property**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--links/match/device/property" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`list` / :ansible-option-elements:`elements=string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Match udev property.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--links/match/device/type"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.link_role__parameter-main__links/match/device/type:

      .. rst-class:: ansible-option-title

      **type**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--links/match/device/type" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`list` / :ansible-option-elements:`elements=string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Match udev DEVTYPE.


      .. raw:: html

        </div>


  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--links/match/system"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.link_role__parameter-main__links/match/system:

      .. rst-class:: ansible-option-title

      **system**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--links/match/system" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`dictionary`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      System-specific attributes to be matched.


      .. raw:: html

        </div>
    
  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--links/match/system/architecture"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.link_role__parameter-main__links/match/system/architecture:

      .. rst-class:: ansible-option-title

      **architecture**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--links/match/system/architecture" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Match system architecture.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--links/match/system/credential"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.link_role__parameter-main__links/match/system/credential:

      .. rst-class:: ansible-option-title

      **credential**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--links/match/system/credential" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Match service credential.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--links/match/system/firmware"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.link_role__parameter-main__links/match/system/firmware:

      .. rst-class:: ansible-option-title

      **firmware**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--links/match/system/firmware" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Match system firmware.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--links/match/system/host"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.link_role__parameter-main__links/match/system/host:

      .. rst-class:: ansible-option-title

      **host**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--links/match/system/host" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Match hostname or machine ID.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--links/match/system/kernel_command_line"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.link_role__parameter-main__links/match/system/kernel_command_line:

      .. rst-class:: ansible-option-title

      **kernel_command_line**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--links/match/system/kernel_command_line" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Match kernel command line option presence.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--links/match/system/kernel_version"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.link_role__parameter-main__links/match/system/kernel_version:

      .. rst-class:: ansible-option-title

      **kernel_version**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--links/match/system/kernel_version" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Match kernel version expression.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--links/match/system/virtualization"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.link_role__parameter-main__links/match/system/virtualization:

      .. rst-class:: ansible-option-title

      **virtualization**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--links/match/system/virtualization" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Match virtualization type.


      .. raw:: html

        </div>



  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--links/mtu_bytes"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.link_role__parameter-main__links/mtu_bytes:

      .. rst-class:: ansible-option-title

      **mtu_bytes**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--links/mtu_bytes" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      The MTU for the link.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--links/name"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.link_role__parameter-main__links/name:

      .. rst-class:: ansible-option-title

      **name**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--links/name" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Name to set on the link.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--links/name_policy"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.link_role__parameter-main__links/name_policy:

      .. rst-class:: ansible-option-title

      **name_policy**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--links/name_policy" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Policy for setting the name of the link.


      .. rst-class:: ansible-option-line

      :ansible-option-choices:`Choices:`

      - :ansible-option-choices-entry:`"kernel"`
      - :ansible-option-choices-entry:`"database"`
      - :ansible-option-choices-entry:`"onboard"`
      - :ansible-option-choices-entry:`"slot"`
      - :ansible-option-choices-entry:`"path"`
      - :ansible-option-choices-entry:`"mac"`
      - :ansible-option-choices-entry:`"keep"`


      .. raw:: html

        </div>


  * - .. raw:: html

        <div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--suppress_reload"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.link_role__parameter-main__suppress_reload:

      .. rst-class:: ansible-option-title

      **suppress_reload**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--suppress_reload" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`boolean`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-cell">

      Suppress the reloading of systemd-networkd if changes are made.


      .. rst-class:: ansible-option-line

      :ansible-option-choices:`Choices:`

      - :ansible-option-choices-entry-default:`false` :ansible-option-choices-default-mark:`← (default)`
      - :ansible-option-choices-entry:`true`


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--systemd_root"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.link_role__parameter-main__systemd_root:

      .. rst-class:: ansible-option-title

      **systemd_root**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--systemd_root" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-cell">

      Root path of filesystem containing systemd-networkd configuration files.


      .. rst-class:: ansible-option-line

      :ansible-option-default-bold:`Default:` :ansible-option-default:`""`

      .. raw:: html

        </div>


.. Attributes


.. Notes


.. Seealso




.. Extra links

Collection links
~~~~~~~~~~~~~~~~

.. raw:: html

  <p class="ansible-links">
    <a href="https://github.com/kpfleming/ansible-systemd-networkd/issues" aria-role="button" target="_blank" rel="noopener external">Issue Tracker</a>
    <a href="https://github.com/kpfleming/ansible-systemd-networkd" aria-role="button" target="_blank" rel="noopener external">Repository (Sources)</a>
  </p>

.. Parsing errors

