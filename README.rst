Dorkstation
===========

What is this?
-------------

The dorkstation is a vagrant virtual machine, bundling all tools you need to
manage and configure your development infrastructure. There is `not much` magic
involved. There is one command line tool called dork_, that uses all information
it gets to manage Docker_ containers according to your Git_ branching model. If
you don't have a branching model yet, have a look at `git flow`_. Ansible_ is
used to store all configuration in a reproducable manner.

.. _dork: http://github.com/iamdork/dork
.. _Docker: http://docker.io
.. _git: https://git-scm.com
.. _git flow: http://nvie.com/posts/a-successful-git-branching-model/
.. _Ansible: http://www.ansible.com

Sounds awesome, how do I get started?
-------------------------------------

First install Vagrant_ and either VirtualBox or VMWare providers. Then clone and
setup the vagrant box::

    git clone https://github.com/iamdork/dorkstation.git dorkstation
    cd dorkstation/vagrant
    vagrant up

.. _Vagrant: https://www.vagrantup.com

You are supposed to make configuration changes and maintain your own fork of
this repository. A short explanation of it's contents:

* vagrant: You probably want to make modifications here.
* playbooks: Contains playbooks to apply to your (virtual) machines.
* roles: Custom roles. Leave them for now.
* source: Project sourcecodes.
* build: Project build results.

