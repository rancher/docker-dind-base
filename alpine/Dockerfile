FROM rancher/socat-docker:v0.2.0

RUN apk add --update iptables ca-certificates lxc e2fsprogs && \
    rm -rf /var/cache/apk/*

ADD ./wrapdocker /usr/local/bin/wrapdocker
ADD ./docker /usr/bin/docker

CMD [ "/bin/bash" ]
