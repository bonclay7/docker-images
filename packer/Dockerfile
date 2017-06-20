FROM ubuntu:xenial

RUN apt-get -qq -y update
RUN apt-get -qq -y install unzip wget

ADD tools/install-packer.sh /tmp
RUN /tmp/install-packer.sh

CMD /bin/bash
