# SSH server
This image is used as a base image which based on debian.

## FROM debian:jessie

## Configuration
1. Add sources.list with 163 mirrors.
2. It turns out that ssh client can never access to this server with predefined password in Dockerfile. Therefore a predefined authorized_keys file is added, which leads to another warning on client machine that can be fixed by following command:
``` script
ssh-keygen -f "$HOME/.ssh/known_hosts" -R [docker-host-ip]:exposed-port
```

## NB when other services being built on:
Entrypoint shell may be necessary when a new image is based on, with following script:
``` Entrypoint shell
cmd_ssh="/usr/sbin/sshd -D"
cmd_other="other service command"
cmd...
{ $cmd_ssh & $cmd_others & ...}
```
## [Reference](https://docs.docker.com/engine/examples/running_ssh_service/)
