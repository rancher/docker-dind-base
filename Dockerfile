FROM jpetazzo/dind
MAINTAINER Bill Maxwell <bill@rancher.com> @cloudnautique

RUN apt-get update  && apt-get install -y \
    git \
    curl \
    wget

RUN locale-gen en_US.utf8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

ADD ./wrapdocker /usr/local/bin/wrapdocker
ADD ./vendor/docker /usr/bin/docker
RUN chmod +x /usr/bin/docker

RUN curl https://sdk.cloud.google.com | bash

VOLUME /scratch

CMD [ "/bin/bash" ]
