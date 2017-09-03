FROM debian:docker
COPY docker.list /etc/apt/sources.list.d/docker.list
RUN  apt-get update \
       && apt-get install -y subversion libapache2-svn \
       && rm -rf /var/lib/apt/lists/*
COPY opt/jvm /opt/jvm
COPY opt/maven /opt/maven
COPY opt/node /opt/node
COPY opt/jenkins.war /jenkins.war
COPY entrypoint.sh /entrypoint.sh
EXPOSE 22 80
ENTRYPOINT ["/entrypoint.sh"]
