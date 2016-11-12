#!/bin/bash

echo "Setup the ubuntu-core on KVM"
wget -nc http://releases.ubuntu.com/ubuntu-core/16/ubuntu-core-16-amd64.img.xz

rm -rf /tmp/*
xzfile=$(basename "$1")
imgfile="${xzfile%.*}"
echo $imgfile
cp $1 /tmp/
unxz /tmp/$xzfile

sudo kvm -m 1500 -redir :8090::80 -redir :8022::22 -redir :4201::4201 /tmp/$imgfile &
pid=$!

source ./xdotcommand.sh

ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -p 8022 snapweb@localhost

trap 'kill -9 $pid' 0
rm /tmp/$imgfile

