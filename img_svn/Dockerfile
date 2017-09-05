FROM alpine:3.5cn
RUN apk add --no-cache apache2 apache2-utils apache2-webdav mod_dav_svn subversion
RUN mkdir -p /run/apache2
ADD davsvn-vhost.conf /etc/apache2/conf.d/davsvn-vhost.conf
ADD entry.sh /entry.sh
ENTRYPOINT ["/entry.sh"]
