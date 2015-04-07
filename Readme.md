# Ubuntu Docker image with following packages
* wget
* curl
* apache2
* php 5.6
* glusterfs-client
* git
* vim
* wget
* php5
* php5-mysql
* php5-mcrypt
* php5-intl
* php5-curl
* php5-imagick
* php5-memcache
* php5-gd
* rsupervisor
* rsyslog

# Dockerfile usage example
Start new `Dockerfile` with dummy apache welcome page only
```
FROM mlazarov/ubuntu-php56-gfs

CMD ["apache2ctl","-D FOREGROUND"] 

EXPOSE 82
```

# Building docker image
docker build -t ubuntu-web-server .

# Start docker container
docker run --rm --name webserver -p 80:80 --privileged -t ubuntu-web-server

# Start docker container - interactive mode
docker run -i --rm --name webserver -p 80:80 --privileged -t ubuntu-web-server /bin/bash
