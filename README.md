Dorkstation
===========

What is this?
-------------

The dorkstation is a vagrant virtual machine, bundling all tools you need to
manage and configure your development infrastructure. There is *not much* magic
involved. There is one command line tool called [dork], that uses all information
it gets to manage [Docker] containers according to your [Git] branching model. If
you don't have a branching model yet, have a look at [git flow]. [Ansible] is
used to store all configuration in a reproducable manner.

[dork]: http://github.com/iamdork/dork
[Docker]: http://docker.io
[git]: https://git-scm.com
[git flow]: http://nvie.com/posts/a-successful-git-branching-model/
[Ansible]: http://www.ansible.com

Sounds awesome, how do I get started?
-------------------------------------

First install [Vagrant] and either VirtualBox or VMWare providers. Then clone and
setup the vagrant box::
```bash
git clone https://github.com/iamdork/dorkstation.git dorkstation
cd dorkstation/vagrant
vagrant up
```

[Vagrant]: https://www.vagrantup.com

You are supposed to make configuration changes and maintain your own fork of
this repository. A short explanation of it's contents:

* vagrant: You probably want to make modifications here.
* playbooks: Contains playbooks to apply to your (virtual) machines.
* roles: Custom roles. Leave them for now.
* source: Projects source codes.
* build: Project builds.

