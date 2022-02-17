#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-hitboxaltcoin/vuicoind-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/vuicoind docker/bin/
cp $BUILD_DIR/src/vuicoin-cli docker/bin/
cp $BUILD_DIR/src/vuicoin-tx docker/bin/
strip docker/bin/vuicoind
strip docker/bin/vuicoin-cli
strip docker/bin/vuicoin-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
