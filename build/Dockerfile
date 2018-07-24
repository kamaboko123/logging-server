FROM ubuntu:bionic

RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y ruby-dev gcc make

RUN gem install fluentd --no-ri --no-rdoc
RUN fluentd --setup

CMD ["/usr/local/bin/fluentd", "-c", "/fluentd/conf/fluent.conf"]

