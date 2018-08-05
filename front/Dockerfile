FROM nginx:1.15.2
MAINTAINER m0cchi

COPY ./nginx.conf /etc/nginx/
COPY ./default.conf /etc/nginx/conf.d/

RUN apt update && apt install -y curl  python
RUN cd /root/ && curl -O https://raw.githubusercontent.com/m0cchi/wait_for_tcp/master/wait_for_tcp.py && chmod +x wait_for_tcp.py
