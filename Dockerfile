FROM ubuntu:latest

RUN apt-get update && apt-get install python-software-properties && \
add-apt-repository ppa:ondrej/php5-5.6 && \
apt-get install -y glusterfs-client git vim wget apache2 \
php5 php5-mysql php5-mcrypt php5-intl php5-curl php5-imagick php5-memcache \
supervisor rsyslog && apt-get clean

# Enable php mcrypt module
RUN php5enmod mcrypt

# Enable basic apache mods
RUN a2enmod rewrite && a2enmod headers


