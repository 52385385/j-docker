# GIT Server
## How to run
Assume expose port is 11122
```shell
docker run -d --name git -v `pwd`/keys:/git-server/keys -v `pwd`/repositories:/git-server/repos -p 11122:22 git
```

## How to add repository
Run git init from serversice
```shell
docker exec git git init xxxxx
```

## How to add user
Generate key and copy pub key into folder keys, restart container to refresh.

## How to checkout
```shell
git clone ssh://git@127.0.0.1:11122/git-server/repos/config.git
```

# Note
* THis git has no access limited, i.e., no access control, everyone can fetch projects from it and no private project exists.
* Only system admin can manage repositories.
