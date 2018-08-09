FROM fedora:28

COPY ./Gemfile /root
COPY ./Gemfile.lock /root
COPY ./app.rb /root
COPY ./views /root/views

COPY ./run.sh /root

RUN dnf -y install ruby python
RUN gem install bundler
RUN cd /root/ && curl -O https://raw.githubusercontent.com/m0cchi/wait_for_tcp/master/wait_for_tcp.py && chmod +x wait_for_tcp.py

RUN cd /root && bundle install

CMD /bin/bash /root/run.sh
