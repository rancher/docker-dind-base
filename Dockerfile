FROM ubuntu:14.04.4
MAINTAINER Bill Maxwell <bill@rancher.com> @cloudnautique

RUN apt-get update  && apt-get install -y \
    apt-transport-https \
    ca-certificates \
    lxc \
    iptables \
    git \
    curl \
    xz-utils \
    wget \
    gcc \
    libc6-dev \
    make \
    --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

RUN locale-gen en_US.utf8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
ENV TERM linux
ENV GOLANG_VERSION 1.4.2

ADD ./wrapdocker /usr/local/bin/wrapdocker
ADD https://get.docker.com/builds/Linux/x86_64/docker-1.10.3 /usr/bin/docker
RUN chmod +x /usr/bin/docker

RUN curl -sSL https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz \
		| tar -v -C /usr/src -xz && \
    cd /usr/src/go/src && ./make.bash --no-clean 2>&1

ENV PATH /usr/src/go/bin:$PATH

VOLUME /scratch
VOLUME /var/lib/docker

CMD [ "/bin/bash" ]
