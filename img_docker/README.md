# Dockerized docker with ssh support

## How to run
Run this image with following command, mapping host docker.sock file and exposing port 22 to any host port (e.g. 11001):
``` Run script
docker run -d --name dk -v /var/run/docker.sock:/var/run/docker.sock -p 11001:22 debian:docker
```
