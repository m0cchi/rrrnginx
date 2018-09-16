#!/bin/sh

mkdir -p /var/lib/rsyslog
cat /root/bin/rsyslog.conf > /etc/rsyslog.conf

/usr/sbin/rsyslogd -n
