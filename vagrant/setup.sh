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

if [ -f /etc/ansible/hosts ]; then
  echo "/etc/ansible/hosts already exists - skipping"
else
  mkdir -p /etc/ansible
  touch /etc/ansible/hosts
fi

if grep -F "[workstation]" /etc/ansible/hosts > /dev/null; then
  echo "dork already in ansible hosts - skipping"
else
  echo "Modifying /etc/ansible/hosts"
  echo -e "[workstation]\nlocalhost ansible_connection=local dork_user=vagrant\n" >> /etc/ansible/hosts
fi

ansible-galaxy install --no-deps --force --role-file=/vagrant/roles.yml --roles-path=/etc/ansible/roles
ANSIBLE_ROLES_PATH=/etc/ansible/roles:/opt/roles ansible-playbook /vagrant/workstation.yml
