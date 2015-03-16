# DO[cker-fo]RK workspace template

## Create password for project on public host
```
sudo htpasswd -c /etc/nginx/.htpasswd-[project] [username]
```

## VMWare provider troubleshooting:
```
vagrant up --provider vmware_fusion

… Waiting for HGFS …

yum install perl -y
/usr/bin/vmware-config-tools.pl -d
```


