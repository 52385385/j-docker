# GIT Server
## How to run
Assume expose port is 11122
```shell
docker run -d --name git -v `pwd`/keys:/git-server/keys -v `pwd`/repositories:/git-server/repos -p 11122:22 git
```

## How to add user
Generate key and copy pub key into folder keys, restart container to refresh.

## How to checkout
```shell
git clone ssh://yourname@127.0.0.1:11122/git-server/repos/config.git
```

