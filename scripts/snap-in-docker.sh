#!/bin/bash
#
# Build the snapweb snap using a docker container.

set -ev

docker run -v $GOPATH:/go snapcore/snapcraft sh -c 'cd /go/src/github.com/snapweb-selenium-tests && export GOPATH=/go PATH=/go/bin:$PATH && ./scripts/snap.sh'