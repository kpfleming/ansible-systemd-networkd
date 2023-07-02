
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

.. _ansible_collections.kpfleming.systemd_networkd.network_role:

.. Anchors: aliases


.. Title

kpfleming.systemd_networkd.network role -- Manages systemd-networkd networks.
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. Collection note

.. note::
    This role is part of the `kpfleming.systemd_networkd collection <https://galaxy.ansible.com/kpfleming/systemd_networkd>`_ (version 3.2.3).

    To install it use: :code:`ansible-galaxy collection install kpfleming.systemd\_networkd`.

    To use it in a playbook, specify: :code:`kpfleming.systemd_networkd.network`.

.. contents::
   :local:
   :depth: 2


.. Entry point title

Entry point ``main`` -- Manages systemd-networkd networks.
----------------------------------------------------------

.. version_added


.. Deprecated


Synopsis
^^^^^^^^

.. Description

- This role operates in one of two modes:
  1) When "dropin\_for" is not specified, creates a .network file in /etc/systemd/network
  using the supplied "name", and applies the configuration provided to that file.
  2) When "dropin\_for" is specified, creates a .conf file in the dropin directory for the
  network specified, using the supplied "name", and applies the configuration provided to
  that file.

- Detailed descriptions of parameters and their behavior can be found in 'man systemd.network'.

- Sets fact named 'systemd\_networkd\_network\_changed' to either true or false to indicate whether
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
        <div class="ansibleOptionAnchor" id="parameter-main--dropin_for"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__dropin_for:

      .. rst-class:: ansible-option-title

      **dropin_for**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--dropin_for" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-cell">

      Name of network to which this configuration should be applied as a dropin.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks:

      .. rst-class:: ansible-option-title

      **networks**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`list` / :ansible-option-elements:`elements=dictionary` / :ansible-option-required:`required`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-cell">

      Attributes of the networks to be managed.


      .. raw:: html

        </div>
    
  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/addresses"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/addresses:

      .. rst-class:: ansible-option-title

      **addresses**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/addresses" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`list` / :ansible-option-elements:`elements=dictionary`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Addresses to be used on the network.


      .. raw:: html

        </div>
    
  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/addresses/address"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/addresses/address:

      .. rst-class:: ansible-option-title

      **address**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/addresses/address" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      An IPv4 or IPv6 address.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/addresses/broadcast"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/addresses/broadcast:

      .. rst-class:: ansible-option-title

      **broadcast**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/addresses/broadcast" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      The broadcast address of the network.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/addresses/home_address"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/addresses/home_address:

      .. rst-class:: ansible-option-title

      **home_address**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/addresses/home_address" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`boolean`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Whether this network is the system's home address.


      .. rst-class:: ansible-option-line

      :ansible-option-choices:`Choices:`

      - :ansible-option-choices-entry:`false`
      - :ansible-option-choices-entry:`true`


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/addresses/peer"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/addresses/peer:

      .. rst-class:: ansible-option-title

      **peer**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/addresses/peer" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      The address of the peer on a point-to-point network.


      .. raw:: html

        </div>


  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/bind_carrier"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/bind_carrier:

      .. rst-class:: ansible-option-title

      **bind_carrier**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/bind_carrier" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`list` / :ansible-option-elements:`elements=string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Bind carrier status to other networks.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/configure_without_carrier"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/configure_without_carrier:

      .. rst-class:: ansible-option-title

      **configure_without_carrier**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/configure_without_carrier" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`boolean`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Allow network configuration without carrier.


      .. rst-class:: ansible-option-line

      :ansible-option-choices:`Choices:`

      - :ansible-option-choices-entry:`false`
      - :ansible-option-choices-entry:`true`


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/dhcp"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/dhcp:

      .. rst-class:: ansible-option-title

      **dhcp**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/dhcp" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Configure DHCP clients on the network.


      .. rst-class:: ansible-option-line

      :ansible-option-choices:`Choices:`

      - :ansible-option-choices-entry:`"ipv4"`
      - :ansible-option-choices-entry:`"ipv6"`
      - :ansible-option-choices-entry:`"True"`
      - :ansible-option-choices-entry:`"False"`


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/dhcpv4"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/dhcpv4:

      .. rst-class:: ansible-option-title

      **dhcpv4**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/dhcpv4" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`dictionary`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Attributes of the DHCPv4 client on the network.


      .. raw:: html

        </div>
    
  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/dhcpv4/client_identifier"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/dhcpv4/client_identifier:

      .. rst-class:: ansible-option-title

      **client_identifier**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/dhcpv4/client_identifier" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Method used to construct the Client Identifier.


      .. rst-class:: ansible-option-line

      :ansible-option-choices:`Choices:`

      - :ansible-option-choices-entry:`"mac"`
      - :ansible-option-choices-entry:`"duid"`
      - :ansible-option-choices-entry:`"duid-only"`


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/dhcpv4/hostname"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/dhcpv4/hostname:

      .. rst-class:: ansible-option-title

      **hostname**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/dhcpv4/hostname" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Hostname to be sent.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/dhcpv4/routes_to_dns"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/dhcpv4/routes_to_dns:

      .. rst-class:: ansible-option-title

      **routes_to_dns**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/dhcpv4/routes_to_dns" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`boolean`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Whether routes to the provided DNS server(s) should be added to the routing table.


      .. rst-class:: ansible-option-line

      :ansible-option-choices:`Choices:`

      - :ansible-option-choices-entry:`false`
      - :ansible-option-choices-entry:`true`


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/dhcpv4/routes_to_ntp"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/dhcpv4/routes_to_ntp:

      .. rst-class:: ansible-option-title

      **routes_to_ntp**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/dhcpv4/routes_to_ntp" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`boolean`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Whether routes to the provided NTP server(s) should be added to the routing table.


      .. rst-class:: ansible-option-line

      :ansible-option-choices:`Choices:`

      - :ansible-option-choices-entry:`false`
      - :ansible-option-choices-entry:`true`


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/dhcpv4/send_hostname"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/dhcpv4/send_hostname:

      .. rst-class:: ansible-option-title

      **send_hostname**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/dhcpv4/send_hostname" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`boolean`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Whether local hostname should be sent to the DHCP server.


      .. rst-class:: ansible-option-line

      :ansible-option-choices:`Choices:`

      - :ansible-option-choices-entry:`false`
      - :ansible-option-choices-entry:`true`


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/dhcpv4/send_release"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/dhcpv4/send_release:

      .. rst-class:: ansible-option-title

      **send_release**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/dhcpv4/send_release" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`boolean`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Whether an assigned address should be released when the network is stopped.


      .. rst-class:: ansible-option-line

      :ansible-option-choices:`Choices:`

      - :ansible-option-choices-entry:`false`
      - :ansible-option-choices-entry:`true`


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/dhcpv4/use_dns"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/dhcpv4/use_dns:

      .. rst-class:: ansible-option-title

      **use_dns**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/dhcpv4/use_dns" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`boolean`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Whether DNS server(s) provided by the DHCP server should be used.


      .. rst-class:: ansible-option-line

      :ansible-option-choices:`Choices:`

      - :ansible-option-choices-entry:`false`
      - :ansible-option-choices-entry:`true`


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/dhcpv4/use_gateway"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/dhcpv4/use_gateway:

      .. rst-class:: ansible-option-title

      **use_gateway**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/dhcpv4/use_gateway" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`boolean`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Whether the default route provided by the DHCP server should be added to the routing table.


      .. rst-class:: ansible-option-line

      :ansible-option-choices:`Choices:`

      - :ansible-option-choices-entry:`false`
      - :ansible-option-choices-entry:`true`


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/dhcpv4/use_hostname"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/dhcpv4/use_hostname:

      .. rst-class:: ansible-option-title

      **use_hostname**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/dhcpv4/use_hostname" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`boolean`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Whether the hostname provided by the DHCP server should be used.


      .. rst-class:: ansible-option-line

      :ansible-option-choices:`Choices:`

      - :ansible-option-choices-entry:`false`
      - :ansible-option-choices-entry:`true`


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/dhcpv4/use_ntp"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/dhcpv4/use_ntp:

      .. rst-class:: ansible-option-title

      **use_ntp**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/dhcpv4/use_ntp" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`boolean`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Whether NTP server(s) provided by the DHCP server should be used.


      .. rst-class:: ansible-option-line

      :ansible-option-choices:`Choices:`

      - :ansible-option-choices-entry:`false`
      - :ansible-option-choices-entry:`true`


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/dhcpv4/use_routes"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/dhcpv4/use_routes:

      .. rst-class:: ansible-option-title

      **use_routes**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/dhcpv4/use_routes" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`boolean`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Whether routes provided by the DHCP server should be added to the routing table.


      .. rst-class:: ansible-option-line

      :ansible-option-choices:`Choices:`

      - :ansible-option-choices-entry:`false`
      - :ansible-option-choices-entry:`true`


      .. raw:: html

        </div>


  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/dhcpv6"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/dhcpv6:

      .. rst-class:: ansible-option-title

      **dhcpv6**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/dhcpv6" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`dictionary`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Attributes of the DHCPv6 client on the network.


      .. raw:: html

        </div>
    
  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/dhcpv6/use_dns"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/dhcpv6/use_dns:

      .. rst-class:: ansible-option-title

      **use_dns**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/dhcpv6/use_dns" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`boolean`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Whether DNS server(s) provided by the DHCP server should be used.


      .. rst-class:: ansible-option-line

      :ansible-option-choices:`Choices:`

      - :ansible-option-choices-entry:`false`
      - :ansible-option-choices-entry:`true`


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/dhcpv6/use_hostname"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/dhcpv6/use_hostname:

      .. rst-class:: ansible-option-title

      **use_hostname**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/dhcpv6/use_hostname" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`boolean`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Whether the hostname provided by the DHCP server should be used.


      .. rst-class:: ansible-option-line

      :ansible-option-choices:`Choices:`

      - :ansible-option-choices-entry:`false`
      - :ansible-option-choices-entry:`true`


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/dhcpv6/use_ntp"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/dhcpv6/use_ntp:

      .. rst-class:: ansible-option-title

      **use_ntp**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/dhcpv6/use_ntp" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`boolean`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Whether NTP server(s) provided by the DHCP server should be used.


      .. rst-class:: ansible-option-line

      :ansible-option-choices:`Choices:`

      - :ansible-option-choices-entry:`false`
      - :ansible-option-choices-entry:`true`


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/dhcpv6/without_ra"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/dhcpv6/without_ra:

      .. rst-class:: ansible-option-title

      **without_ra**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/dhcpv6/without_ra" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Whether the client should be started even if an RA does not indicate it is needed.


      .. rst-class:: ansible-option-line

      :ansible-option-choices:`Choices:`

      - :ansible-option-choices-entry:`"False"`
      - :ansible-option-choices-entry:`"solicit"`
      - :ansible-option-choices-entry:`"information-request"`


      .. raw:: html

        </div>


  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/dns"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/dns:

      .. rst-class:: ansible-option-title

      **dns**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/dns" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`list` / :ansible-option-elements:`elements=string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Configure DNS servers on the network.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/emit_lldp"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/emit_lldp:

      .. rst-class:: ansible-option-title

      **emit_lldp**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/emit_lldp" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Configure LLDP emission on the network.


      .. rst-class:: ansible-option-line

      :ansible-option-choices:`Choices:`

      - :ansible-option-choices-entry:`"nearest-bridge"`
      - :ansible-option-choices-entry:`"True"`
      - :ansible-option-choices-entry:`"False"`


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/ip_forward"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/ip_forward:

      .. rst-class:: ansible-option-title

      **ip_forward**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/ip_forward" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Configure IP forwarding (system-wide).


      .. rst-class:: ansible-option-line

      :ansible-option-choices:`Choices:`

      - :ansible-option-choices-entry:`"ipv4"`
      - :ansible-option-choices-entry:`"ipv6"`
      - :ansible-option-choices-entry:`"True"`
      - :ansible-option-choices-entry:`"False"`


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/ipv6_accept_ra"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/ipv6_accept_ra:

      .. rst-class:: ansible-option-title

      **ipv6_accept_ra**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/ipv6_accept_ra" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`boolean`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Whether Router Advertisements should be accepted on the network.


      .. rst-class:: ansible-option-line

      :ansible-option-choices:`Choices:`

      - :ansible-option-choices-entry:`false`
      - :ansible-option-choices-entry:`true`


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/ipv6_proxy_ndp"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/ipv6_proxy_ndp:

      .. rst-class:: ansible-option-title

      **ipv6_proxy_ndp**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/ipv6_proxy_ndp" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`boolean`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Configure Proxy NDP support on the network.


      .. rst-class:: ansible-option-line

      :ansible-option-choices:`Choices:`

      - :ansible-option-choices-entry:`false`
      - :ansible-option-choices-entry:`true`


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/ipv6_proxy_ndp_address"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/ipv6_proxy_ndp_address:

      .. rst-class:: ansible-option-title

      **ipv6_proxy_ndp_address**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/ipv6_proxy_ndp_address" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`list` / :ansible-option-elements:`elements=string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Configure Proxy NDP addresses on the network.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/ipv6acceptra"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/ipv6acceptra:

      .. rst-class:: ansible-option-title

      **ipv6acceptra**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/ipv6acceptra" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`dictionary`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Attributes of the IPv6 RA client on the network.


      .. raw:: html

        </div>
    
  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/ipv6acceptra/token"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/ipv6acceptra/token:

      .. rst-class:: ansible-option-title

      **token**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/ipv6acceptra/token" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Mode, and pattern, used to generate a SLAAC address.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/ipv6acceptra/use_dns"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/ipv6acceptra/use_dns:

      .. rst-class:: ansible-option-title

      **use_dns**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/ipv6acceptra/use_dns" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`boolean`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Whether DNS server(s) provided by the RA should be used.


      .. rst-class:: ansible-option-line

      :ansible-option-choices:`Choices:`

      - :ansible-option-choices-entry:`false`
      - :ansible-option-choices-entry:`true`


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/ipv6acceptra/use_gateway"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/ipv6acceptra/use_gateway:

      .. rst-class:: ansible-option-title

      **use_gateway**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/ipv6acceptra/use_gateway" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`boolean`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Whether the default route provided by the RA should be added to the routing table.


      .. rst-class:: ansible-option-line

      :ansible-option-choices:`Choices:`

      - :ansible-option-choices-entry:`false`
      - :ansible-option-choices-entry:`true`


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/ipv6acceptra/use_mtu"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/ipv6acceptra/use_mtu:

      .. rst-class:: ansible-option-title

      **use_mtu**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/ipv6acceptra/use_mtu" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`boolean`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Whether the MTU provided by the RA should be used.


      .. rst-class:: ansible-option-line

      :ansible-option-choices:`Choices:`

      - :ansible-option-choices-entry:`false`
      - :ansible-option-choices-entry:`true`


      .. raw:: html

        </div>


  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/keep_configuration"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/keep_configuration:

      .. rst-class:: ansible-option-title

      **keep_configuration**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/keep_configuration" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Manage configuration when network is stopped.


      .. rst-class:: ansible-option-line

      :ansible-option-choices:`Choices:`

      - :ansible-option-choices-entry:`"static"`
      - :ansible-option-choices-entry:`"dhcp"`
      - :ansible-option-choices-entry:`"dhcp-on-stop"`
      - :ansible-option-choices-entry:`"True"`
      - :ansible-option-choices-entry:`"False"`


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/link"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/link:

      .. rst-class:: ansible-option-title

      **link**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/link" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`dictionary`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Attributes of the link used by the network.


      .. raw:: html

        </div>
    
  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/link/activation_policy"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/link/activation_policy:

      .. rst-class:: ansible-option-title

      **activation_policy**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/link/activation_policy" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      How the network should or should not be activated.


      .. rst-class:: ansible-option-line

      :ansible-option-choices:`Choices:`

      - :ansible-option-choices-entry:`"up"`
      - :ansible-option-choices-entry:`"always-up"`
      - :ansible-option-choices-entry:`"manual"`
      - :ansible-option-choices-entry:`"down"`
      - :ansible-option-choices-entry:`"always-down"`


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/link/mac_address"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/link/mac_address:

      .. rst-class:: ansible-option-title

      **mac_address**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/link/mac_address" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      The MAC address to be used for the network.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/link/mtu_bytes"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/link/mtu_bytes:

      .. rst-class:: ansible-option-title

      **mtu_bytes**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/link/mtu_bytes" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      The MTU for the network.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/link/required_family_for_online"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/link/required_family_for_online:

      .. rst-class:: ansible-option-title

      **required_family_for_online**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/link/required_family_for_online" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Which address family(ies) are considered when determining 'online' status.


      .. rst-class:: ansible-option-line

      :ansible-option-choices:`Choices:`

      - :ansible-option-choices-entry:`"any"`
      - :ansible-option-choices-entry:`"both"`
      - :ansible-option-choices-entry:`"ipv4"`
      - :ansible-option-choices-entry:`"ipv6"`


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/link/required_for_online"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/link/required_for_online:

      .. rst-class:: ansible-option-title

      **required_for_online**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/link/required_for_online" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Whether the network is included in the 'online' status determination.


      .. rst-class:: ansible-option-line

      :ansible-option-choices:`Choices:`

      - :ansible-option-choices-entry:`"True"`
      - :ansible-option-choices-entry:`"False"`
      - :ansible-option-choices-entry:`"missing"`
      - :ansible-option-choices-entry:`"no-carrier"`
      - :ansible-option-choices-entry:`"dormant"`
      - :ansible-option-choices-entry:`"degraded-carrier"`
      - :ansible-option-choices-entry:`"carrier"`
      - :ansible-option-choices-entry:`"enslaved"`
      - :ansible-option-choices-entry:`"routable"`


      .. raw:: html

        </div>


  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/link_local_addressing"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/link_local_addressing:

      .. rst-class:: ansible-option-title

      **link_local_addressing**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/link_local_addressing" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Configure link-local addressing on the network.


      .. rst-class:: ansible-option-line

      :ansible-option-choices:`Choices:`

      - :ansible-option-choices-entry:`"ipv4"`
      - :ansible-option-choices-entry:`"ipv6"`
      - :ansible-option-choices-entry:`"True"`
      - :ansible-option-choices-entry:`"False"`


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/lldp"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/lldp:

      .. rst-class:: ansible-option-title

      **lldp**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/lldp" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Configure LLDP reception on the network.


      .. rst-class:: ansible-option-line

      :ansible-option-choices:`Choices:`

      - :ansible-option-choices-entry:`"routers-only"`
      - :ansible-option-choices-entry:`"True"`
      - :ansible-option-choices-entry:`"False"`


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/match"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/match:

      .. rst-class:: ansible-option-title

      **match**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/match" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`dictionary`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Matching attributes of the network.


      .. raw:: html

        </div>
    
  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/match/device"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/match/device:

      .. rst-class:: ansible-option-title

      **device**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/match/device" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--networks/match/device/driver"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/match/device/driver:

      .. rst-class:: ansible-option-title

      **driver**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/match/device/driver" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--networks/match/device/kind"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/match/device/kind:

      .. rst-class:: ansible-option-title

      **kind**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/match/device/kind" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--networks/match/device/mac_address"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/match/device/mac_address:

      .. rst-class:: ansible-option-title

      **mac_address**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/match/device/mac_address" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--networks/match/device/name"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/match/device/name:

      .. rst-class:: ansible-option-title

      **name**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/match/device/name" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--networks/match/device/path"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/match/device/path:

      .. rst-class:: ansible-option-title

      **path**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/match/device/path" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--networks/match/device/permanent_mac_address"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/match/device/permanent_mac_address:

      .. rst-class:: ansible-option-title

      **permanent_mac_address**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/match/device/permanent_mac_address" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--networks/match/device/property"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/match/device/property:

      .. rst-class:: ansible-option-title

      **property**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/match/device/property" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--networks/match/device/type"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/match/device/type:

      .. rst-class:: ansible-option-title

      **type**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/match/device/type" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--networks/match/system"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/match/system:

      .. rst-class:: ansible-option-title

      **system**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/match/system" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--networks/match/system/architecture"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/match/system/architecture:

      .. rst-class:: ansible-option-title

      **architecture**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/match/system/architecture" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--networks/match/system/credential"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/match/system/credential:

      .. rst-class:: ansible-option-title

      **credential**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/match/system/credential" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--networks/match/system/firmware"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/match/system/firmware:

      .. rst-class:: ansible-option-title

      **firmware**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/match/system/firmware" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--networks/match/system/host"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/match/system/host:

      .. rst-class:: ansible-option-title

      **host**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/match/system/host" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--networks/match/system/kernel_command_line"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/match/system/kernel_command_line:

      .. rst-class:: ansible-option-title

      **kernel_command_line**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/match/system/kernel_command_line" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--networks/match/system/kernel_version"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/match/system/kernel_version:

      .. rst-class:: ansible-option-title

      **kernel_version**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/match/system/kernel_version" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--networks/match/system/virtualization"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/match/system/virtualization:

      .. rst-class:: ansible-option-title

      **virtualization**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/match/system/virtualization" title="Permalink to this option"></a>

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
        <div class="ansibleOptionAnchor" id="parameter-main--networks/name"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/name:

      .. rst-class:: ansible-option-title

      **name**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/name" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string` / :ansible-option-required:`required`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Name of the network.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/ntp"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/ntp:

      .. rst-class:: ansible-option-title

      **ntp**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/ntp" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`list` / :ansible-option-elements:`elements=string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Configure NTP servers on the network.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/routes"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/routes:

      .. rst-class:: ansible-option-title

      **routes**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/routes" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`list` / :ansible-option-elements:`elements=dictionary`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Routes to be used by the network.


      .. raw:: html

        </div>
    
  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/routes/destination"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/routes/destination:

      .. rst-class:: ansible-option-title

      **destination**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/routes/destination" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      IPv4 or IPv6 subnet which can be reached through gateway.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/routes/gateway"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/routes/gateway:

      .. rst-class:: ansible-option-title

      **gateway**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/routes/gateway" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      IPv4 or IPv6 address of next-hop router.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/routes/metric"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/routes/metric:

      .. rst-class:: ansible-option-title

      **metric**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/routes/metric" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      The route metric.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/routes/mtu_bytes"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/routes/mtu_bytes:

      .. rst-class:: ansible-option-title

      **mtu_bytes**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/routes/mtu_bytes" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      The MTU to be applied to this route.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/routes/preferred_source"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/routes/preferred_source:

      .. rst-class:: ansible-option-title

      **preferred_source**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/routes/preferred_source" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      IPv4 or IPv6 address to be preferred when sending packets via this route.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/routes/scope"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/routes/scope:

      .. rst-class:: ansible-option-title

      **scope**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/routes/scope" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Scope of the route (IPv4 only).


      .. rst-class:: ansible-option-line

      :ansible-option-choices:`Choices:`

      - :ansible-option-choices-entry:`"global"`
      - :ansible-option-choices-entry:`"site"`
      - :ansible-option-choices-entry:`"link"`
      - :ansible-option-choices-entry:`"host"`
      - :ansible-option-choices-entry:`"nowhere"`


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/routes/source"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/routes/source:

      .. rst-class:: ansible-option-title

      **source**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/routes/source" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      IPv4 or IPv6 subnet matched against source addresses for selection of this route.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--networks/routes/type"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__networks/routes/type:

      .. rst-class:: ansible-option-title

      **type**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--networks/routes/type" title="Permalink to this option"></a>

      .. rst-class:: ansible-option-type-line

      :ansible-option-type:`string`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Type of route.


      .. rst-class:: ansible-option-line

      :ansible-option-choices:`Choices:`

      - :ansible-option-choices-entry:`"unicast"`
      - :ansible-option-choices-entry:`"local"`
      - :ansible-option-choices-entry:`"broadcast"`
      - :ansible-option-choices-entry:`"anycast"`
      - :ansible-option-choices-entry:`"multicast"`
      - :ansible-option-choices-entry:`"blackhole"`
      - :ansible-option-choices-entry:`"unreachable"`
      - :ansible-option-choices-entry:`"prohibit"`
      - :ansible-option-choices-entry:`"throw"`
      - :ansible-option-choices-entry:`"nat"`
      - :ansible-option-choices-entry:`"xresolve"`


      .. raw:: html

        </div>



  * - .. raw:: html

        <div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--suppress_reload"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__suppress_reload:

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

      .. _ansible_collections.kpfleming.systemd_networkd.network_role__parameter-main__systemd_root:

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

