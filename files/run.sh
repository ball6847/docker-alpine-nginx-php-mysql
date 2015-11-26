#!/bin/sh

[ -f /run-pre.sh ] && /run-pre.sh

if [ ! -d /data/htdocs ] ; then
  mkdir -p /data/htdocs
  chown :www-data /data/htdocs
fi

# create all mysql neccessary database
if [ ! -f /var/lib/mysql/ibdata1 ]; then
  mysql_install_db
fi

# start mysql
mysqld --skip-grant-tables &

# start php-fpm
mkdir -p /data/logs/php-fpm
php-fpm

# start nginx
mkdir -p /data/logs/nginx
mkdir -p /data/logs/php-fpm
mkdir -p /tmp/nginx
chown nginx /tmp/nginx
nginx
