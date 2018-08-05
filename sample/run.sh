#/bin/bash
set -e

python /root/wait_for_tcp.py $REDIS_HOST $REDIS_PORT 60

curl -s telnet://$REDIS_HOST:$REDIS_PORT <<EOS
set localhost app:4567

quit
.
EOS

cd /root/app/
bundle install
ruby app.rb
