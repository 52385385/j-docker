# Jenkins with nodejs support

## How to run
1. Ports mapping, 22(ssh) and 80(jenkins)
2. Required volumes mapping
> /var/run/docker.sock (docker runner)
> /root/.m2 (maven repo)
> /root/.jenkins (jenkins home)
3. Optional volumes mapping
> /opt/maven/conf/settings.xml (maven config)

### CMD of run on local.dev
``` script
docker run -d --name jenkins --restart always -v /var/run/docker.sock:/var/run/docker.sock -v /root/work/jenkins:/root/.jenkins -v /root/sh:/root/sh -v /root/work/m2repo:/root/.m2 -v /usr/maven/conf/settings.xml:/opt/maven/conf/settings.xml -v /root/yimym:/root/yimym -p 8887:8080 -p 12000:22 debian:jenkins
```
