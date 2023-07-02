
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

.. _ansible_collections.kpfleming.systemd_networkd.wireguard_role:

.. Anchors: aliases


.. Title

kpfleming.systemd_networkd.wireguard role -- Manages systemd-networkd WireGuard tunnel virtual network devices.
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. Collection note

.. note::
    This role is part of the `kpfleming.systemd_networkd collection <https://galaxy.ansible.com/kpfleming/systemd_networkd>`_ (version 3.2.3).

    To install it use: :code:`ansible-galaxy collection install kpfleming.systemd\_networkd`.

    To use it in a playbook, specify: :code:`kpfleming.systemd_networkd.wireguard`.

.. contents::
   :local:
   :depth: 2


.. Entry point title

Entry point ``main`` -- Manages systemd-networkd WireGuard tunnel virtual network devices.
------------------------------------------------------------------------------------------

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

- Detailed descriptions of parameters and their behavior can be
  found in 'man systemd.netdev'.

- Sets fact named 'systemd\_networkd\_wireguard\_changed' to
  either true or false to indicate whether any changes were made.


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

      .. _ansible_collections.kpfleming.systemd_networkd.wireguard_role__parameter-main__suppress_reload:

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
        <div class="ansibleOptionAnchor" id="parameter-main--suppress_restart"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.wireguard_role__parameter-main__suppress_restart:

      .. rst-class:: ansible-option-title

      **suppress_restart**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--suppress_restart" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`boolean`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-cell">

      Suppress the restarting of systemd-networkd if changes are made to the netdev configuration.


      .. rst-class:: ansible-option-line

      :ansible-option-choices:`Choices:`

      - :ansible-option-choices-entry-default:`false` :ansible-option-choices-default-mark:`← (default)`
      - :ansible-option-choices-entry:`true`


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--systemd_root"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.wireguard_role__parameter-main__systemd_root:

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
        <div class="ansibleOptionAnchor" id="parameter-main--wireguards"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.wireguard_role__parameter-main__wireguards:

      .. rst-class:: ansible-option-title

      **wireguards**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--wireguards" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`list` / :ansible-option-elements:`elements=dictionary` / :ansible-option-required:`required`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-cell">

      Attributes of the interfaces to be managed.


      .. raw:: html

        </div>
    
  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--wireguards/firewall_mark"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.wireguard_role__parameter-main__wireguards/firewall_mark:

      .. rst-class:: ansible-option-title

      **firewall_mark**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--wireguards/firewall_mark" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`integer`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Mark to be set on outgoing packets from this interface.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--wireguards/listen_port"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.wireguard_role__parameter-main__wireguards/listen_port:

      .. rst-class:: ansible-option-title

      **listen_port**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--wireguards/listen_port" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`integer`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      UDP Port to listen for incoming traffic. If not specified, a port will be chosen based on the interface name.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--wireguards/match"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.wireguard_role__parameter-main__wireguards/match:

      .. rst-class:: ansible-option-title

      **match**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--wireguards/match" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--wireguards/match/system"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.wireguard_role__parameter-main__wireguards/match/system:

      .. rst-class:: ansible-option-title

      **system**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--wireguards/match/system" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--wireguards/match/system/architecture"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.wireguard_role__parameter-main__wireguards/match/system/architecture:

      .. rst-class:: ansible-option-title

      **architecture**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--wireguards/match/system/architecture" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--wireguards/match/system/credential"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.wireguard_role__parameter-main__wireguards/match/system/credential:

      .. rst-class:: ansible-option-title

      **credential**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--wireguards/match/system/credential" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--wireguards/match/system/firmware"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.wireguard_role__parameter-main__wireguards/match/system/firmware:

      .. rst-class:: ansible-option-title

      **firmware**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--wireguards/match/system/firmware" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--wireguards/match/system/host"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.wireguard_role__parameter-main__wireguards/match/system/host:

      .. rst-class:: ansible-option-title

      **host**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--wireguards/match/system/host" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--wireguards/match/system/kernel_command_line"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.wireguard_role__parameter-main__wireguards/match/system/kernel_command_line:

      .. rst-class:: ansible-option-title

      **kernel_command_line**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--wireguards/match/system/kernel_command_line" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--wireguards/match/system/kernel_version"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.wireguard_role__parameter-main__wireguards/match/system/kernel_version:

      .. rst-class:: ansible-option-title

      **kernel_version**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--wireguards/match/system/kernel_version" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--wireguards/match/system/virtualization"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.wireguard_role__parameter-main__wireguards/match/system/virtualization:

      .. rst-class:: ansible-option-title

      **virtualization**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--wireguards/match/system/virtualization" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--wireguards/name"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.wireguard_role__parameter-main__wireguards/name:

      .. rst-class:: ansible-option-title

      **name**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--wireguards/name" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--wireguards/netdev"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.wireguard_role__parameter-main__wireguards/netdev:

      .. rst-class:: ansible-option-title

      **netdev**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--wireguards/netdev" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--wireguards/netdev/mac_address"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.wireguard_role__parameter-main__wireguards/netdev/mac_address:

      .. rst-class:: ansible-option-title

      **mac_address**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--wireguards/netdev/mac_address" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--wireguards/netdev/mtu_bytes"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.wireguard_role__parameter-main__wireguards/netdev/mtu_bytes:

      .. rst-class:: ansible-option-title

      **mtu_bytes**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--wireguards/netdev/mtu_bytes" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--wireguards/peers"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.wireguard_role__parameter-main__wireguards/peers:

      .. rst-class:: ansible-option-title

      **peers**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--wireguards/peers" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`list` / :ansible-option-elements:`elements=dictionary` / :ansible-option-required:`required`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Attributes of the peers for the tunnel.


      .. raw:: html

        </div>
    
  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--wireguards/peers/allowed_ips"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.wireguard_role__parameter-main__wireguards/peers/allowed_ips:

      .. rst-class:: ansible-option-title

      **allowed_ips**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--wireguards/peers/allowed_ips" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`list` / :ansible-option-elements:`elements=string` / :ansible-option-required:`required`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Addresses, with optional netmasks, which the peer is allowed to use for sending traffic,
          and for which traffic will be sent to the peer.
          


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--wireguards/peers/endpoint"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.wireguard_role__parameter-main__wireguards/peers/endpoint:

      .. rst-class:: ansible-option-title

      **endpoint**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--wireguards/peers/endpoint" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Initial address and port to be used for traffic to this peer.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--wireguards/peers/name"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.wireguard_role__parameter-main__wireguards/peers/name:

      .. rst-class:: ansible-option-title

      **name**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--wireguards/peers/name" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Name of the peer (will only be used as a comment in the configuration file).


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--wireguards/peers/persistent_keepalive"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.wireguard_role__parameter-main__wireguards/peers/persistent_keepalive:

      .. rst-class:: ansible-option-title

      **persistent_keepalive**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--wireguards/peers/persistent_keepalive" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`integer`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Interval, in seconds, to send empty-but-authenticated packets to this peer.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--wireguards/peers/preshared_key"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.wireguard_role__parameter-main__wireguards/peers/preshared_key:

      .. rst-class:: ansible-option-title

      **preshared_key**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--wireguards/peers/preshared_key" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Base64-encoded preshared key with the peer.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--wireguards/peers/preshared_key_file"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.wireguard_role__parameter-main__wireguards/peers/preshared_key_file:

      .. rst-class:: ansible-option-title

      **preshared_key_file**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--wireguards/peers/preshared_key_file" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`path`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Path to file containing a base64-encoded preshared key with the peer.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--wireguards/peers/public_key"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.wireguard_role__parameter-main__wireguards/peers/public_key:

      .. rst-class:: ansible-option-title

      **public_key**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--wireguards/peers/public_key" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string` / :ansible-option-required:`required`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Base64-encoded public key of the peer.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--wireguards/peers/route_metric"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.wireguard_role__parameter-main__wireguards/peers/route_metric:

      .. rst-class:: ansible-option-title

      **route_metric**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--wireguards/peers/route_metric" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`integer`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Metric value for routes added when route\_table is specified.
          
          Overrides the setting from the tunnel, if specified.
          


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--wireguards/peers/route_table"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.wireguard_role__parameter-main__wireguards/peers/route_table:

      .. rst-class:: ansible-option-title

      **route_table**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--wireguards/peers/route_table" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Route table name (from networkd.conf), number, or predefined name ("default", "main", or "local").
          
          Overrides the setting from the tunnel, if specified.
          


      .. raw:: html

        </div>


  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--wireguards/private_key"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.wireguard_role__parameter-main__wireguards/private_key:

      .. rst-class:: ansible-option-title

      **private_key**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--wireguards/private_key" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Base64-encoded private key.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--wireguards/private_key_file"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.wireguard_role__parameter-main__wireguards/private_key_file:

      .. rst-class:: ansible-option-title

      **private_key_file**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--wireguards/private_key_file" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`path`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Path to file containing a base64-encoded private key.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--wireguards/route_metric"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.wireguard_role__parameter-main__wireguards/route_metric:

      .. rst-class:: ansible-option-title

      **route_metric**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--wireguards/route_metric" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`integer`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Metric value for routes added when route\_table is specified.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--wireguards/route_table"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.wireguard_role__parameter-main__wireguards/route_table:

      .. rst-class:: ansible-option-title

      **route_table**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--wireguards/route_table" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Route table name (from networkd.conf), number, or predefined name ("default", "main", or "local").


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--wireguards/underlying_name"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.wireguard_role__parameter-main__wireguards/underlying_name:

      .. rst-class:: ansible-option-title

      **underlying_name**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--wireguards/underlying_name" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




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

