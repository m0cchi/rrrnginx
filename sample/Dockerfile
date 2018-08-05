FROM fedora:28

ENV APP_ENV production

RUN dnf -y install ruby python
RUN gem install bundler
RUN cd /root/ && curl -O https://raw.githubusercontent.com/m0cchi/wait_for_tcp/master/wait_for_tcp.py && chmod +x wait_for_tcp.py

COPY ./run.sh /root/
COPY ./app /root/

CMD /bin/bash /root/run.sh
