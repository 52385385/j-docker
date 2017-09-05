# Samba Image
## Base Image
CentOS

## Image Build Steps:
1. yum install samba samba-client samba-common
2. useradd smbanon
3. mkdir -p /samba/anonymous && chown -R smbanon /smb/anonymous && chmod 700 /samba/anonymous
4. usermod -c "Samba anonymous user" -g nobody -d /samba/anonymous smbanon
5. yum clean all
6. ENTRYPOINT ["/entrypoint.sh"]

## How to run
```shell
docker run --name samba -d -p 137:137 -p 138:138 -p 139:139 -p 445:445 -v /home/samba:/samba/anonymous samba
```
