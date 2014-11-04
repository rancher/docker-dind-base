FROM jpetazzo/dind
MAINTAINER Bill Maxwell <bill@rancher.com> @cloudnautique

RUN apt-get update  && apt-get install -y \
    git \
    curl \
    wget

RUN rm -rf /var/lib/apt/lists/*
