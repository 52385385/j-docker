#!/bin/sh

if [ -n "$SVN_REPO" ]; then
test ! -d "/var/svn/$SVN_REPO" && svnadmin create /var/svn/$SVN_REPO && chgrp -R apache /var/svn/$SVN_REPO && chmod -R 775 /var/svn/$SVN_REPO
echo "Creating the repository: /var/svn$SVN_REPO"
else
test ! -d "/var/svn/config" && svnadmin create /var/svn/config && chgrp -R apache /var/svn/config && chmod -R 775 /var/svn/config
echo "Warning: SVN_REPO variable not defined, starting with svn default repository: /var/svn/config"
fi

if [ -n "$DAV_SVN_USER" ] && [ -n "$DAV_SVN_PASS" ]; then
htpasswd -bc /etc/apache2/conf.d/davsvn.htpasswd $DAV_SVN_USER $DAV_SVN_PASS
else
htpasswd -bc /etc/apache2/conf.d/davsvn.htpasswd yimym Nomes2016
echo "Warning: DAV_SVN_USER / DAV_SVN_PASS variables not defined, starting with default account:"
echo "***********************"
echo "* username: yimym     *"
echo "* password: Nomes2016 *"
echo "***********************"
fi

httpd -D FOREGROUND
