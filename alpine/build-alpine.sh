#!/bin/bash

cd $(dirname $0)

cp ../wrapdocker ./
cp ../vendor/docker ./

: {TAG:-dev}

docker build --rm -t rancher/dind-alpine:${TAG} .

rm ./wrapdocker
rm ./docker
