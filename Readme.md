# Ubuntu Docker image with following packages
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
* rsupervisor
* rsyslog

# Dockerfile usage example
Start new `Dockerfile` containing alrady
```
FROM mlazarov/ubuntu-php56-gfs

CMD ["apache2ctl","-D FOREGROUND"] 

EXPOSE 82
```


