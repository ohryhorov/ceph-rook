#!/bin/bash -xv

apt install build-essential -y
cd /usr/src/ && wget https://dl.google.com/go/go1.11.linux-amd64.tar.gz && tar -xvf go1.11.linux-amd64.tar.gz
mv ./go /usr/lib/
cd /usr/bin && ln -s ../lib/go/bin/go && ln -s ../lib/go/bin/gofmt
mkdir -p /root/go/src/github.com/rook/rook
cd /root/go/src/github.com/rook && git clone https://github.com/rook/rook.git
apt install docker-ce -y
#apt install docker-ce-cli -y
systemctl start docker

