# Docker in Docker template.
## Usage

In order for you to be able to run docker inside the container, you must run in privileged mode.
This is built off of jpetazzo/dind image.

```
docker run --privileged rancher/docker-dind-base
```

If a Command is passed in on startup, then run the following:

```
/usr/local/bin/wrapdocker
```

before trying to start any containers within docker.
