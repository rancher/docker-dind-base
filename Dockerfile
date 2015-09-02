FROM jpetazzo/dind
MAINTAINER Bill Maxwell <bill@rancher.com> @cloudnautique

RUN apt-get update  && apt-get install -y \
    git \
    curl \
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

ADD ./wrapdocker /usr/local/bin/wrapdocker
ADD ./vendor/docker /usr/bin/docker
RUN chmod +x /usr/bin/docker


ENV GOLANG_VERSION 1.5
RUN curl -sSL https://storage.googleapis.com/golang/go$GOLANG_VERSION.linux-amd64.tar.gz \
		| tar -v -C /usr/local -xz
ENV PATH /usr/local/go/bin:$PATH

VOLUME /scratch

CMD [ "/bin/bash" ]
