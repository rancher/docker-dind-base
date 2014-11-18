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

VOLUME /scratch

RUN sed -i 's/exec\ bash/sleep\ 1\ \&\&\ exec\ "$@"/' /usr/local/bin/wrapdocker

ENTRYPOINT [ "/usr/local/bin/wrapdocker" ]

CMD ["/bin/bash"]
