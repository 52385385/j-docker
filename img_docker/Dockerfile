FROM debian:ssh
COPY docker.list /etc/apt/sources.list.d/docker.list
RUN apt-key adv \
           --keyserver hkp://ha.pool.sks-keyservers.net:80 \
           --recv-keys 58118E89F3A912897C070ADBF76221572C52609D \
       && apt-get install -y apt-transport-https ca-certificates gnupg2 --force-yes \
       && apt-get update \
       && apt-get install -y docker-engine \
       && rm -r /var/lib/apt/lists/*
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
