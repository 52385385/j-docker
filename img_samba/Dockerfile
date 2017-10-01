FROM debian:jessie-slim
COPY sources.list.jessie /etc/apt/sources.list
RUN apt-get update \
    && apt-get install -y samba samba-client samba-common \
    && rm -r /var/lib/apt/lists/* \
    && useradd smbanon \
	&& mkdir -p /samba/anonymous \
    && chown -R smbanon /samba/anonymous \
	&& chmod 700 /samba/anonymous \
	&& usermod -c "Samba anonymouse user" -g nogroup -d /samba/anonymouse smbanon
COPY entrypoint.sh /entrypoint.sh
COPY smb.conf /etc/samba/smb.conf
ENTRYPOINT ["/entrypoint.sh"]
