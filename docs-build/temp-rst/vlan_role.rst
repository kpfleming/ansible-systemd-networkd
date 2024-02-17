
.. Document meta

:orphan:

.. |antsibull-internal-nbsp| unicode:: 0xA0
    :trim:

.. meta::
  :antsibull-docs: 2.7.0

.. Anchors

.. _ansible_collections.kpfleming.systemd_networkd.vlan_role:

.. Title

kpfleming.systemd_networkd.vlan role -- Manages systemd-networkd VLAN virtual network devices.
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. Collection note

.. note::
    This role is part of the `kpfleming.systemd_networkd collection <https://galaxy.ansible.com/kpfleming/systemd_networkd>`_ (version 3.2.3).

    It is not included in ``ansible-core``.
    To check whether it is installed, run :code:`ansible-galaxy collection list`.

    To install it use: :code:`ansible-galaxy collection install kpfleming.systemd\_networkd`.

    To use it in a playbook, specify: :code:`kpfleming.systemd_networkd.vlan`.

.. contents::
   :local:
   :depth: 2


.. Entry point title

Entry point ``main`` -- Manages systemd-networkd VLAN virtual network devices.
------------------------------------------------------------------------------

.. version_added


.. Deprecated


Synopsis
^^^^^^^^

.. Description

- This role will create (or update) three items in /etc/systemd/network for
  each specified VLAN:
  1) A drop-in directory for the underlying network
  2) A .netdev file for the VLAN device
  3) A .conf file in the drop-in directory connecting the VLAN device
  to the underlying network

- Detailed descriptions of parameters and their behavior can be found in 'man systemd.netdev'.

- Sets fact named 'systemd\_networkd\_vlan\_changed' to either true or false to indicate whether
  any changes were made.


.. Requirements


.. Options

Parameters
^^^^^^^^^^

.. tabularcolumns:: \X{1}{3}\X{2}{3}

.. list-table::
  :width: 100%
  :widths: auto
  :header-rows: 1
  :class: longtable ansible-option-table

  * - Parameter
    - Comments

  * - .. raw:: html

        <div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--suppress_reload"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.vlan_role__parameter-main__suppress_reload:

      .. rst-class:: ansible-option-title

      **suppress_reload**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--suppress_reload" title="Permalink to this option"></a>

      .. ansible-option-type-line::

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

      .. _ansible_collections.kpfleming.systemd_networkd.vlan_role__parameter-main__systemd_root:

      .. rst-class:: ansible-option-title

      **systemd_root**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--systemd_root" title="Permalink to this option"></a>

      .. ansible-option-type-line::

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
        <div class="ansibleOptionAnchor" id="parameter-main--vlans"></div>

      .. _ansible_collections.kpfleming.systemd_networkd.vlan_role__parameter-main__vlans:

      .. rst-class:: ansible-option-title

      **vlans**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--vlans" title="Permalink to this option"></a>

      .. ansible-option-type-line::

        :ansible-option-type:`list` / :ansible-option-elements:`elements=dictionary` / :ansible-option-required:`required`




      .. raw:: html

        </div>

    - .. raw:: html

        <div class="ansible-option-cell">

      Attributes of the devices to be managed.


      .. raw:: html

        </div>
    
  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--vlans/id"></div>

      .. raw:: latex

        \hspace{0.02\textwidth}\begin{minipage}[t]{0.3\textwidth}

      .. _ansible_collections.kpfleming.systemd_networkd.vlan_role__parameter-main__vlans/id:

      .. rst-class:: ansible-option-title

      **id**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--vlans/id" title="Permalink to this option"></a>

      .. ansible-option-type-line::

        :ansible-option-type:`integer` / :ansible-option-required:`required`




      .. raw:: html

        </div>

      .. raw:: latex

        \end{minipage}

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      The VLAN ID number (1-4095).


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--vlans/match"></div>

      .. raw:: latex

        \hspace{0.02\textwidth}\begin{minipage}[t]{0.3\textwidth}

      .. _ansible_collections.kpfleming.systemd_networkd.vlan_role__parameter-main__vlans/match:

      .. rst-class:: ansible-option-title

      **match**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--vlans/match" title="Permalink to this option"></a>

      .. ansible-option-type-line::

        :ansible-option-type:`dictionary`




      .. raw:: html

        </div>

      .. raw:: latex

        \end{minipage}

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Matching attributes of the network device.


      .. raw:: html

        </div>
    
  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--vlans/match/system"></div>

      .. raw:: latex

        \hspace{0.04\textwidth}\begin{minipage}[t]{0.28\textwidth}

      .. _ansible_collections.kpfleming.systemd_networkd.vlan_role__parameter-main__vlans/match/system:

      .. rst-class:: ansible-option-title

      **system**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--vlans/match/system" title="Permalink to this option"></a>

      .. ansible-option-type-line::

        :ansible-option-type:`dictionary`




      .. raw:: html

        </div>

      .. raw:: latex

        \end{minipage}

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      System-specific attributes to be matched.


      .. raw:: html

        </div>
    
  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--vlans/match/system/architecture"></div>

      .. raw:: latex

        \hspace{0.06\textwidth}\begin{minipage}[t]{0.26\textwidth}

      .. _ansible_collections.kpfleming.systemd_networkd.vlan_role__parameter-main__vlans/match/system/architecture:

      .. rst-class:: ansible-option-title

      **architecture**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--vlans/match/system/architecture" title="Permalink to this option"></a>

      .. ansible-option-type-line::

        :ansible-option-type:`string`




      .. raw:: html

        </div>

      .. raw:: latex

        \end{minipage}

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Match system architecture.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--vlans/match/system/credential"></div>

      .. raw:: latex

        \hspace{0.06\textwidth}\begin{minipage}[t]{0.26\textwidth}

      .. _ansible_collections.kpfleming.systemd_networkd.vlan_role__parameter-main__vlans/match/system/credential:

      .. rst-class:: ansible-option-title

      **credential**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--vlans/match/system/credential" title="Permalink to this option"></a>

      .. ansible-option-type-line::

        :ansible-option-type:`string`




      .. raw:: html

        </div>

      .. raw:: latex

        \end{minipage}

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Match service credential.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--vlans/match/system/firmware"></div>

      .. raw:: latex

        \hspace{0.06\textwidth}\begin{minipage}[t]{0.26\textwidth}

      .. _ansible_collections.kpfleming.systemd_networkd.vlan_role__parameter-main__vlans/match/system/firmware:

      .. rst-class:: ansible-option-title

      **firmware**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--vlans/match/system/firmware" title="Permalink to this option"></a>

      .. ansible-option-type-line::

        :ansible-option-type:`string`




      .. raw:: html

        </div>

      .. raw:: latex

        \end{minipage}

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Match system firmware.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--vlans/match/system/host"></div>

      .. raw:: latex

        \hspace{0.06\textwidth}\begin{minipage}[t]{0.26\textwidth}

      .. _ansible_collections.kpfleming.systemd_networkd.vlan_role__parameter-main__vlans/match/system/host:

      .. rst-class:: ansible-option-title

      **host**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--vlans/match/system/host" title="Permalink to this option"></a>

      .. ansible-option-type-line::

        :ansible-option-type:`string`




      .. raw:: html

        </div>

      .. raw:: latex

        \end{minipage}

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Match hostname or machine ID.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--vlans/match/system/kernel_command_line"></div>

      .. raw:: latex

        \hspace{0.06\textwidth}\begin{minipage}[t]{0.26\textwidth}

      .. _ansible_collections.kpfleming.systemd_networkd.vlan_role__parameter-main__vlans/match/system/kernel_command_line:

      .. rst-class:: ansible-option-title

      **kernel_command_line**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--vlans/match/system/kernel_command_line" title="Permalink to this option"></a>

      .. ansible-option-type-line::

        :ansible-option-type:`string`




      .. raw:: html

        </div>

      .. raw:: latex

        \end{minipage}

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Match kernel command line option presence.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--vlans/match/system/kernel_version"></div>

      .. raw:: latex

        \hspace{0.06\textwidth}\begin{minipage}[t]{0.26\textwidth}

      .. _ansible_collections.kpfleming.systemd_networkd.vlan_role__parameter-main__vlans/match/system/kernel_version:

      .. rst-class:: ansible-option-title

      **kernel_version**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--vlans/match/system/kernel_version" title="Permalink to this option"></a>

      .. ansible-option-type-line::

        :ansible-option-type:`string`




      .. raw:: html

        </div>

      .. raw:: latex

        \end{minipage}

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Match kernel version expression.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--vlans/match/system/virtualization"></div>

      .. raw:: latex

        \hspace{0.06\textwidth}\begin{minipage}[t]{0.26\textwidth}

      .. _ansible_collections.kpfleming.systemd_networkd.vlan_role__parameter-main__vlans/match/system/virtualization:

      .. rst-class:: ansible-option-title

      **virtualization**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--vlans/match/system/virtualization" title="Permalink to this option"></a>

      .. ansible-option-type-line::

        :ansible-option-type:`string`




      .. raw:: html

        </div>

      .. raw:: latex

        \end{minipage}

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Match virtualization type.


      .. raw:: html

        </div>



  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--vlans/name"></div>

      .. raw:: latex

        \hspace{0.02\textwidth}\begin{minipage}[t]{0.3\textwidth}

      .. _ansible_collections.kpfleming.systemd_networkd.vlan_role__parameter-main__vlans/name:

      .. rst-class:: ansible-option-title

      **name**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--vlans/name" title="Permalink to this option"></a>

      .. ansible-option-type-line::

        :ansible-option-type:`string` / :ansible-option-required:`required`




      .. raw:: html

        </div>

      .. raw:: latex

        \end{minipage}

    - .. raw:: html

        <div class="ansible-option-indent-desc"></div><div class="ansible-option-cell">

      Name of the network device.


      .. raw:: html

        </div>

  * - .. raw:: html

        <div class="ansible-option-indent"></div><div class="ansible-option-cell">
        <div class="ansibleOptionAnchor" id="parameter-main--vlans/underlying_name"></div>

      .. raw:: latex

        \hspace{0.02\textwidth}\begin{minipage}[t]{0.3\textwidth}

      .. _ansible_collections.kpfleming.systemd_networkd.vlan_role__parameter-main__vlans/underlying_name:

      .. rst-class:: ansible-option-title

      **underlying_name**

      .. raw:: html

        <a class="ansibleOptionLink" href="#parameter-main--vlans/underlying_name" title="Permalink to this option"></a>

      .. ansible-option-type-line::

        :ansible-option-type:`string` / :ansible-option-required:`required`




      .. raw:: html

        </div>

      .. raw:: latex

        \end{minipage}

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

.. ansible-links::

  - title: "Issue Tracker"
    url: "https://github.com/kpfleming/ansible-systemd-networkd/issues"
    external: true
  - title: "Repository (Sources)"
    url: "https://github.com/kpfleming/ansible-systemd-networkd"
    external: true


.. Parsing errors

