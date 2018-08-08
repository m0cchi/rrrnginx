#!/bin/sh

if [ $USE_HTTPS ]; then
  rm /etc/nginx/conf.d/default.conf
else
  rm /etc/nginx/conf.d/default_with_ssl.conf
fi

/usr/sbin/nginx
