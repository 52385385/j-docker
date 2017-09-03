#!/bin/bash
set -e
export JAVA_HOME=/opt/jvm
export MAVEN_HOME=/opt/maven
export NODE_HOME=/opt/node
export CLASSPATH=.:/$CLASSPATH:$JAVA_HOME/lib
export PATH=$PATH:$JAVA_HOME/bin:$JAVA_HOME/jre/bin:$MAVEN_HOME/bin:$NODE_HOME/bin
cmd_ssh="/usr/sbin/sshd -D"
cmd_jenkins="java -Duser.timezone=Asia/Shanghai -jar -Xmx200m /jenkins.war"
{ $cmd_ssh & $cmd_jenkins; }
