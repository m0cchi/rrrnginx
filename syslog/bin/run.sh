#!/bin/sh

cat <<EOF > /etc/rsyslog.conf
# rsyslog configuration file

global(workDirectory="/var/lib/rsyslog")
module(load="builtin:omfile" Template="RSYSLOG_TraditionalFileFormat")

module(load="imudp")
input(type="imudp" port="514")

local5.*    /var/log/nginx_access_log
EOF

/usr/sbin/rsyslogd -n
