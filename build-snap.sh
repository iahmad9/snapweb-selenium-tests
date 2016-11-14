#!/bin/bash
pwd
#mkdir $HOME/tmp
#export GOPATH=$HOME/tmp
#cd tmp

#git clone -b snapweb-selenium-tests --single-branch https://github.com/snapcore/snapweb.git snapweb-selenium-tests

#cd snapweb-selenium-tests

cat > ~/.npmrc <<-EOF
root = $HOME/node/lib/node_modules
prefix = $HOME/node
binroot = $HOME/node/bin
manroot = $HOME/node/man
EOF

mkdir ~/node
export PATH=$PATH:$HOME/node/bin
export NODE_PATH=$HOME/node/lib/node_modules

mkdir -p $GOPATH/src/github.com/snapcore
cd $GOPATH/src/github.com/snapcore
git clone -b snapweb-selenium-tests --single-branch https://github.com/snapcore/snapweb.git snapweb-selenium-tests
cd snapweb-selenium-tests

npm install -g --prefix=$(npm config get prefix) gulp
npm install

pwd

cd $GOPATH/src/github.com/snapcore/snapweb
pwd
source ./build.sh

ls -la

