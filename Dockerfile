FROM jpetazzo/dind
MAINTAINER Bill Maxwell <bill@rancher.com> @cloudnautique

RUN apt-get update  && apt-get install -y \
    git \
    curl \
    wget

RUN rm -rf /var/lib/apt/lists/*

ADD ./wrapdocker_exit.sh /usr/local/bin/wrapdocker_exit.sh

ENTRYPOINT [ "/usr/local/bin/wrapdocker_exit.sh" ]
