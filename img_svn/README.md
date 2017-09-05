# Alpine Subversion
## Single repository hosted
1. Environment settings (following is default)
```conf
# default repository localtion: /var/svn/config
SVN_REPO = config
# default username and password
DAV_SVN_USER = yimym
DAV_SVN_PASS = Nomes2016
```

2. Run sample
docker run -d --name svn -v /root/svn/config:/var/svn/config -p 10080:80 alpine:svn 

## Reference
1. [alpine-svn](https://github.com/pikado/alpine-svn)
2. [install apache and subversion on centos7](http://www.linuxtechi.com/install-apache-subversion-svn-centos-7)
