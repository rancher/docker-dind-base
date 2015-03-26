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

## Contact
For bugs, questions, comments, corrections, suggestions, etc., open an issue in
 [rancherio/rancher](//github.com/rancherio/rancher/issues) with a title starting with `[docker-dind-base] `.

Or just [click here](//github.com/rancherio/rancher/issues/new?title=%5Bdocker-dind-base%5D%20) to create a new issue.

# License
Copyright (c) 2014-2015 [Rancher Labs, Inc.](http://rancher.com)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

[http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
