
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

.. _ansible_collections.kpfleming.systemd_networkd.bond_role:

.. Anchors: aliases


.. Title

kpfleming.systemd_networkd.bond role -- Manages systemd-networkd bonded network devices.
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. Collection note

.. note::
    This role is part of the `kpfleming.systemd_networkd collection <https://galaxy.ansible.com/kpfleming/systemd_networkd>`_ (version 3.2.3).

    To install it use: :code:`ansible-galaxy collection install kpfleming.systemd\_networkd`.

    To use it in a playbook, specify: :code:`kpfleming.systemd_networkd.bond`.

.. contents::
   :local:
   :depth: 2


.. Entry point title

Entry point ``main`` -- Manages systemd-networkd bonded network devices.
------------------------------------------------------------------------

.. version_added


.. Deprecated


Synopsis
^^^^^^^^

.. Description

- This role will create (or update) a number of items in /etc/systemd/network for
  each specified bonded device:
  1) A .netdev file for the bond device
  2) .network files for each link that is a member of the bond; files will be named
  with the bond device's name and a numeric suffix
  3) .link files for each interface that is a member of the bond; files will be named
  with the bond device's name and a numeric suffix

- On Debian and Debian-derivative systems the .link files are
  copied into the initramfs by the \`update-initramfs\` tool, which
  means that the system must be rebooted for changes in those
  files to take effect. In this situation the role will set a fact
  named 'systemd\_networkd\_link\_reboot\_required' and the system
  should be rebooted before any additional configuration of the
  bonded network links is attempted.

- Detailed descriptions of parameters and their behavior can be found in 'man systemd.netdev'
  and 'man systemd.link'.

- Sets fact named 'systemd\_networkd\_bond\_changed' to either true or false to indicate whether
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
        <div class="ansibleOptionAnchor" id="parameter-main--bonds"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.bond_role__parameter-main__bonds:

      .. rst-class:: ansible-option-title

      **bonds**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--bonds" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`list` / :ansible-option-elements:`elements=dictionary` / :ansible-option-required:`required`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-cell">

      Attributes of the bond devices to be managed.


      .. raw:: html

        </div>
    
  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--bonds/down_delay_sec"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.bond_role__parameter-main__bonds/down_delay_sec:

      .. rst-class:: ansible-option-title

      **down_delay_sec**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--bonds/down_delay_sec" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Delay between the minimum number of members reaching 'link down' and 'link down' being reported for the bond.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--bonds/lacp_transmit_rate"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.bond_role__parameter-main__bonds/lacp_transmit_rate:

      .. rst-class:: ansible-option-title

      **lacp_transmit_rate**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--bonds/lacp_transmit_rate" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      LACP data unit transmission rate (only used in 802.3ad mode).


      .. rst-class:: ansible-option-line

      :ansible-option-choices:`Choices:`

      - :ansible-option-choices-entry:`"slow"`
      - :ansible-option-choices-entry:`"fast"`


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--bonds/match"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.bond_role__parameter-main__bonds/match:

      .. rst-class:: ansible-option-title

      **match**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--bonds/match" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`dictionary`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Matching attributes of the bond network device.


      .. raw:: html

        </div>
    
  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--bonds/match/system"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.bond_role__parameter-main__bonds/match/system:

      .. rst-class:: ansible-option-title

      **system**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--bonds/match/system" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--bonds/match/system/architecture"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.bond_role__parameter-main__bonds/match/system/architecture:

      .. rst-class:: ansible-option-title

      **architecture**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--bonds/match/system/architecture" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--bonds/match/system/credential"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.bond_role__parameter-main__bonds/match/system/credential:

      .. rst-class:: ansible-option-title

      **credential**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--bonds/match/system/credential" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--bonds/match/system/firmware"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.bond_role__parameter-main__bonds/match/system/firmware:

      .. rst-class:: ansible-option-title

      **firmware**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--bonds/match/system/firmware" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--bonds/match/system/host"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.bond_role__parameter-main__bonds/match/system/host:

      .. rst-class:: ansible-option-title

      **host**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--bonds/match/system/host" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--bonds/match/system/kernel_command_line"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.bond_role__parameter-main__bonds/match/system/kernel_command_line:

      .. rst-class:: ansible-option-title

      **kernel_command_line**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--bonds/match/system/kernel_command_line" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--bonds/match/system/kernel_version"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.bond_role__parameter-main__bonds/match/system/kernel_version:

      .. rst-class:: ansible-option-title

      **kernel_version**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--bonds/match/system/kernel_version" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--bonds/match/system/virtualization"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.bond_role__parameter-main__bonds/match/system/virtualization:

      .. rst-class:: ansible-option-title

      **virtualization**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--bonds/match/system/virtualization" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--bonds/members"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.bond_role__parameter-main__bonds/members:

      .. rst-class:: ansible-option-title

      **members**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--bonds/members" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`list` / :ansible-option-elements:`elements=dictionary` / :ansible-option-required:`required`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Matching attributes of the bond's member interfaces.


      .. raw:: html

        </div>
    
  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--bonds/members/device"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.bond_role__parameter-main__bonds/members/device:

      .. rst-class:: ansible-option-title

      **device**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--bonds/members/device" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--bonds/members/device/driver"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.bond_role__parameter-main__bonds/members/device/driver:

      .. rst-class:: ansible-option-title

      **driver**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--bonds/members/device/driver" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--bonds/members/device/kind"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.bond_role__parameter-main__bonds/members/device/kind:

      .. rst-class:: ansible-option-title

      **kind**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--bonds/members/device/kind" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--bonds/members/device/mac_address"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.bond_role__parameter-main__bonds/members/device/mac_address:

      .. rst-class:: ansible-option-title

      **mac_address**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--bonds/members/device/mac_address" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--bonds/members/device/original_name"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.bond_role__parameter-main__bonds/members/device/original_name:

      .. rst-class:: ansible-option-title

      **original_name**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--bonds/members/device/original_name" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--bonds/members/device/path"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.bond_role__parameter-main__bonds/members/device/path:

      .. rst-class:: ansible-option-title

      **path**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--bonds/members/device/path" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--bonds/members/device/permanent_mac_address"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.bond_role__parameter-main__bonds/members/device/permanent_mac_address:

      .. rst-class:: ansible-option-title

      **permanent_mac_address**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--bonds/members/device/permanent_mac_address" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--bonds/members/device/property"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.bond_role__parameter-main__bonds/members/device/property:

      .. rst-class:: ansible-option-title

      **property**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--bonds/members/device/property" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--bonds/members/device/type"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.bond_role__parameter-main__bonds/members/device/type:

      .. rst-class:: ansible-option-title

      **type**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--bonds/members/device/type" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--bonds/members/system"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.bond_role__parameter-main__bonds/members/system:

      .. rst-class:: ansible-option-title

      **system**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--bonds/members/system" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--bonds/members/system/architecture"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.bond_role__parameter-main__bonds/members/system/architecture:

      .. rst-class:: ansible-option-title

      **architecture**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--bonds/members/system/architecture" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--bonds/members/system/credential"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.bond_role__parameter-main__bonds/members/system/credential:

      .. rst-class:: ansible-option-title

      **credential**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--bonds/members/system/credential" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--bonds/members/system/firmware"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.bond_role__parameter-main__bonds/members/system/firmware:

      .. rst-class:: ansible-option-title

      **firmware**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--bonds/members/system/firmware" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--bonds/members/system/host"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.bond_role__parameter-main__bonds/members/system/host:

      .. rst-class:: ansible-option-title

      **host**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--bonds/members/system/host" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--bonds/members/system/kernel_command_line"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.bond_role__parameter-main__bonds/members/system/kernel_command_line:

      .. rst-class:: ansible-option-title

      **kernel_command_line**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--bonds/members/system/kernel_command_line" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--bonds/members/system/kernel_version"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.bond_role__parameter-main__bonds/members/system/kernel_version:

      .. rst-class:: ansible-option-title

      **kernel_version**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--bonds/members/system/kernel_version" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--bonds/members/system/virtualization"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.bond_role__parameter-main__bonds/members/system/virtualization:

      .. rst-class:: ansible-option-title

      **virtualization**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--bonds/members/system/virtualization" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--bonds/mii_monitor_sec"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.bond_role__parameter-main__bonds/mii_monitor_sec:

      .. rst-class:: ansible-option-title

      **mii_monitor_sec**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--bonds/mii_monitor_sec" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Frequency of MII link monitoring.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--bonds/min_links"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.bond_role__parameter-main__bonds/min_links:

      .. rst-class:: ansible-option-title

      **min_links**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--bonds/min_links" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`integer`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Minimum number of active members for the device to report that it 'has carrier'.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--bonds/mode"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.bond_role__parameter-main__bonds/mode:

      .. rst-class:: ansible-option-title

      **mode**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--bonds/mode" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Bonding mode.


      .. rst-class:: ansible-option-line

      :ansible-option-choices:`Choices:`

      - :ansible-option-choices-entry:`"balance-rr"`
      - :ansible-option-choices-entry:`"active-backup"`
      - :ansible-option-choices-entry:`"balance-xor"`
      - :ansible-option-choices-entry:`"broadcast"`
      - :ansible-option-choices-entry:`"802.3ad"`
      - :ansible-option-choices-entry:`"balance-tlb"`
      - :ansible-option-choices-entry:`"balance-alb"`


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--bonds/name"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.bond_role__parameter-main__bonds/name:

      .. rst-class:: ansible-option-title

      **name**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--bonds/name" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string` / :ansible-option-required:`required`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Name of the network device.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--bonds/netdev"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.bond_role__parameter-main__bonds/netdev:

      .. rst-class:: ansible-option-title

      **netdev**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--bonds/netdev" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`dictionary`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Attributes of the bond network device.


      .. raw:: html

        </div>
    
  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--bonds/netdev/mac_address"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.bond_role__parameter-main__bonds/netdev/mac_address:

      .. rst-class:: ansible-option-title

      **mac_address**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--bonds/netdev/mac_address" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      MAC address to use on the device.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--bonds/netdev/mtu_bytes"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.bond_role__parameter-main__bonds/netdev/mtu_bytes:

      .. rst-class:: ansible-option-title

      **mtu_bytes**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--bonds/netdev/mtu_bytes" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      The MTU for the tunnel.


      .. raw:: html

        </div>


  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--bonds/transmit_hash_policy"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.bond_role__parameter-main__bonds/transmit_hash_policy:

      .. rst-class:: ansible-option-title

      **transmit_hash_policy**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--bonds/transmit_hash_policy" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Policy for member selection during transmit.


      .. rst-class:: ansible-option-line

      :ansible-option-choices:`Choices:`

      - :ansible-option-choices-entry:`"layer2"`
      - :ansible-option-choices-entry:`"layer3+4"`
      - :ansible-option-choices-entry:`"layer2+3"`
      - :ansible-option-choices-entry:`"encap2+3"`
      - :ansible-option-choices-entry:`"encap3+4"`


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--bonds/up_delay_sec"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.bond_role__parameter-main__bonds/up_delay_sec:

      .. rst-class:: ansible-option-title

      **up_delay_sec**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--bonds/up_delay_sec" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Delay between the minimum number of members reaching 'link up' and 'link up' being reported for the bond.


      .. raw:: html

        </div>


  * - .. raw:: html

        <div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--suppress_reload"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.bond_role__parameter-main__suppress_reload:

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

      .. _ansible_collections.kpfleming.systemd_networkd.bond_role__parameter-main__systemd_root:

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

