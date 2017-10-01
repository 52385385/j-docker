# Samba Image
## Base Image
Debian:jessie-slim

## How to run
```shell
docker run --name samba -d -p 137:137 -p 138:138 -p 139:139 -p 445:445 -v /home/samba:/samba/anonymous samba
```
