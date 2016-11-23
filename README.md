# Slack Connector
Part of slack bot for connection to slack

**All next commands should be run from project root!**

### Preparing
For local start copy file _docker-compose.local.yml_ to _docker-compose.override.yml_  
Copy file _.slack.env.template_ to _.slack.env_ and fill it fields

For install docker-compose use guide https://docs.docker.com/compose/install/

### Local start connection
For start container run command
```console
$ docker-compose build
$ docker-compose up -d
```

### Restart container
For restart container run command
```console
$ docker-compose restart
```

### Check logs
For check container logs run command
```console
$ docker-compose logs --tail=20 -f bot
```

### Stop connection
For stop container run command
```console
$ docoker-compose stop
```