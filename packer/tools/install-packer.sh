#!/bin/bash

workdir=/tmp/packer
pversion=1.0.0

which packer || {
  mkdir -p $workdir
  cd $workdir
  apt-get -qqy install unzip wget
  wget https://releases.hashicorp.com/packer/$pversion/packer_${pversion}_linux_amd64.zip && \
  unzip packer_${pversion}_linux_amd64.zip && \
  mv packer /usr/local/bin/
  rm -Rf $workdir
}
echo "Go ahead and enjoy packer"
