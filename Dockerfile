FROM jpetazzo/dind
MAINTAINER Bill Maxwell <bill@rancher.com> @cloudnautique

RUN apt-get update  && apt-get install -y \
    git \
    curl \
    wget

RUN rm -rf /var/lib/apt/lists/*

RUN sed -i 's/exec\ bash/sleep\ 1\ \&\&\ exec\ "$@"/' /usr/local/bin/wrapdocker

ENTRYPOINT [ "bash", "-x", "/usr/local/bin/wrapdocker" ]
