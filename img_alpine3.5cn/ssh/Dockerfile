FROM alpine:3.5cn

RUN apk add --no-cache openssh
#RUN mkdir /var/run/sshd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# add predefined authorized
RUN mkdir /root/.ssh
COPY authorized_keys /root/.ssh/authorized_keys

# SSH login fix. Otherwise user is kicked off after login
#RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

#ENV NOTVISIBLE "in users profile"
#RUN echo "export VISIBLE=now" >> /etc/profile

ADD entry.sh /entry.sh
RUN chmod +x /entry.sh
EXPOSE 22
ENTRYPOINT ["/entry.sh"]
CMD ["/usr/sbin/sshd", "-D"]
