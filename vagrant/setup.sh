#!/bin/sh

if which pip >/dev/null; then
  echo "python-pip already installed - skipping"
else
  yum install epel-release -y
  yum install python-devel -y
  yum install python-pip -y
fi

if which ansible >/dev/null; then
  echo "ansible already installed - skipping"
else
  pip install markupsafe ansible
fi

if which git >/dev/null; then
  echo "git already installed - skipping"
else
  yum install git -y
fi

#ansible-galaxy install --no-deps --force --role-file=/vagrant/roles.yml --roles-path=/etc/ansible/roles
ANSIBLE_ROLES_PATH=/etc/ansible/roles:/opt/roles ansible-playbook -i /vagrant/workstation.ini /vagrant/workstation.yml
