
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

.. _ansible_collections.kpfleming.systemd_networkd.tunnel_role:

.. Anchors: aliases


.. Title

kpfleming.systemd_networkd.tunnel role -- Manages systemd-networkd tunnel virtual network devices.
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. Collection note

.. note::
    This role is part of the `kpfleming.systemd_networkd collection <https://galaxy.ansible.com/kpfleming/systemd_networkd>`_ (version 3.2.3).

    To install it use: :code:`ansible-galaxy collection install kpfleming.systemd\_networkd`.

    To use it in a playbook, specify: :code:`kpfleming.systemd_networkd.tunnel`.

.. contents::
   :local:
   :depth: 2


.. Entry point title

Entry point ``main`` -- Manages systemd-networkd tunnel virtual network devices.
--------------------------------------------------------------------------------

.. version_added


.. Deprecated


Synopsis
^^^^^^^^

.. Description

- This role will create (or update) three items in /etc/systemd/network for
  each specified tunnel:
  1) A drop-in directory for the underlying network
  2) A .netdev file for the tunnel device
  3) A .conf file in the drop-in directory connecting the tunnel device
  to the underlying network

- Detailed descriptions of parameters and their behavior can be found in 'man systemd.netdev'.

- Sets fact named 'systemd\_networkd\_tunnel\_changed' to either true or false to indicate whether
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
        <div class="ansibleOptionAnchor" id="parameter-main--suppress_reload"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.tunnel_role__parameter-main__suppress_reload:

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

      .. _ansible_collections.kpfleming.systemd_networkd.tunnel_role__parameter-main__systemd_root:

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

  * - .. raw:: html

        <div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--tunnels"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.tunnel_role__parameter-main__tunnels:

      .. rst-class:: ansible-option-title

      **tunnels**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--tunnels" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`list` / :ansible-option-elements:`elements=dictionary` / :ansible-option-required:`required`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-cell">

      Attributes of the tunnels to be managed.


      .. raw:: html

        </div>
    
  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--tunnels/kind"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.tunnel_role__parameter-main__tunnels/kind:

      .. rst-class:: ansible-option-title

      **kind**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--tunnels/kind" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string` / :ansible-option-required:`required`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Type of tunnel.


      .. rst-class:: ansible-option-line

      :ansible-option-choices:`Choices:`

      - :ansible-option-choices-entry:`"gre"`
      - :ansible-option-choices-entry:`"gretap"`
      - :ansible-option-choices-entry:`"ip6gre"`
      - :ansible-option-choices-entry:`"ip6tnl"`
      - :ansible-option-choices-entry:`"ip6gretap"`
      - :ansible-option-choices-entry:`"ipip"`
      - :ansible-option-choices-entry:`"sit"`
      - :ansible-option-choices-entry:`"vti"`
      - :ansible-option-choices-entry:`"vti6"`


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--tunnels/local"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.tunnel_role__parameter-main__tunnels/local:

      .. rst-class:: ansible-option-title

      **local**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--tunnels/local" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Local address for tunneled packets.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--tunnels/match"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.tunnel_role__parameter-main__tunnels/match:

      .. rst-class:: ansible-option-title

      **match**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--tunnels/match" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`dictionary`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Matching attributes of the network device.


      .. raw:: html

        </div>
    
  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--tunnels/match/system"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.tunnel_role__parameter-main__tunnels/match/system:

      .. rst-class:: ansible-option-title

      **system**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--tunnels/match/system" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--tunnels/match/system/architecture"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.tunnel_role__parameter-main__tunnels/match/system/architecture:

      .. rst-class:: ansible-option-title

      **architecture**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--tunnels/match/system/architecture" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--tunnels/match/system/credential"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.tunnel_role__parameter-main__tunnels/match/system/credential:

      .. rst-class:: ansible-option-title

      **credential**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--tunnels/match/system/credential" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--tunnels/match/system/firmware"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.tunnel_role__parameter-main__tunnels/match/system/firmware:

      .. rst-class:: ansible-option-title

      **firmware**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--tunnels/match/system/firmware" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--tunnels/match/system/host"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.tunnel_role__parameter-main__tunnels/match/system/host:

      .. rst-class:: ansible-option-title

      **host**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--tunnels/match/system/host" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--tunnels/match/system/kernel_command_line"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.tunnel_role__parameter-main__tunnels/match/system/kernel_command_line:

      .. rst-class:: ansible-option-title

      **kernel_command_line**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--tunnels/match/system/kernel_command_line" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--tunnels/match/system/kernel_version"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.tunnel_role__parameter-main__tunnels/match/system/kernel_version:

      .. rst-class:: ansible-option-title

      **kernel_version**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--tunnels/match/system/kernel_version" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--tunnels/match/system/virtualization"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.tunnel_role__parameter-main__tunnels/match/system/virtualization:

      .. rst-class:: ansible-option-title

      **virtualization**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--tunnels/match/system/virtualization" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--tunnels/name"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.tunnel_role__parameter-main__tunnels/name:

      .. rst-class:: ansible-option-title

      **name**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--tunnels/name" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--tunnels/netdev"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.tunnel_role__parameter-main__tunnels/netdev:

      .. rst-class:: ansible-option-title

      **netdev**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--tunnels/netdev" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`dictionary`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Attributes of the tunnel network device.


      .. raw:: html

        </div>
    
  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--tunnels/netdev/mac_address"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.tunnel_role__parameter-main__tunnels/netdev/mac_address:

      .. rst-class:: ansible-option-title

      **mac_address**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--tunnels/netdev/mac_address" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--tunnels/netdev/mtu_bytes"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.tunnel_role__parameter-main__tunnels/netdev/mtu_bytes:

      .. rst-class:: ansible-option-title

      **mtu_bytes**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--tunnels/netdev/mtu_bytes" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--tunnels/remote"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.tunnel_role__parameter-main__tunnels/remote:

      .. rst-class:: ansible-option-title

      **remote**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--tunnels/remote" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Remote address for tunneled packets.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--tunnels/ttl"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.tunnel_role__parameter-main__tunnels/ttl:

      .. rst-class:: ansible-option-title

      **ttl**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--tunnels/ttl" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`integer`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Time-To-Live for tunneled packets.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--tunnels/underlying_name"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.tunnel_role__parameter-main__tunnels/underlying_name:

      .. rst-class:: ansible-option-title

      **underlying_name**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--tunnels/underlying_name" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string` / :ansible-option-required:`required`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      The underlying network.


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

