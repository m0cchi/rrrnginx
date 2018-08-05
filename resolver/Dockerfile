FROM fedora:28
MAINTAINER m0cchi

ENV NGINX_CONFIG_OPT_ENV --with-http_stub_status_module --with-http_ssl_module --prefix=/usr/local/nginx --with-http_realip_module --with-http_addition_module --with-http_sub_module --with-http_gunzip_module --with-http_gzip_static_module --with-http_random_index_module --with-http_secure_link_module

RUN dnf -y install git make ruby wget gcc bison openssl-devel pcre-devel python
RUN gem install rake
RUN cd /usr/local/src/ && git clone https://github.com/matsumotory/ngx_mruby.git
RUN cd /usr/local/src/ngx_mruby && sh build.sh && make install

COPY ./extra /usr/local/nginx/
COPY ./nginx.conf /usr/local/nginx/conf/

RUN cd /root/ && curl -O https://raw.githubusercontent.com/m0cchi/wait_for_tcp/master/wait_for_tcp.py && chmod +x wait_for_tcp.py
