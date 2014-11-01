FROM ubuntu:14.04.1
MAINTAINER Bill Maxwell <bill@rancher.com> @cloudnautique

RUN apt-get update && apt-get install -y apt-transport-https

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 \
--recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9

RUN sh -c "echo deb https://get.docker.com/ubuntu docker main \
> /etc/apt/sources.list.d/docker.list"

RUN apt-get update  && apt-get install -y \
    git \
    lxc-docker
