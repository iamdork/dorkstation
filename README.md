# DO[cker-fo]RK workspace template

## Start/Update a project
```
dork-clone https://github.com/myaccount/myproject.git master /var/source/myproject
```

## Run an arbitrary ansible playbook on a dork
```
cd /var/source/myproject
dork-play /path/to/my/playbook.yml --extra-vars="whatever ..."  --tags "idontknow"
```

## Create password for a project
```
sudo ansible-playbook /opt/playbooks/project-password.yml
```
