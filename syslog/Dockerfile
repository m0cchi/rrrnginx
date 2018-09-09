FROM fedora:28

RUN dnf install -y make gcc libestr-devel libfastjson-devel zlib-devel libuuid-devel libgcrypt-devel curl-devel

RUN cd /root && curl -LO http://www.rsyslog.com/files/download/rsyslog/rsyslog-8.37.0.tar.gz && \
    tar zxf rsyslog-8.37.0.tar.gz
RUN cd /root/rsyslog-8.37.0 && \
    ./configure && \
    make && \
    make install
RUN mkdir /var/lib/rsyslog
