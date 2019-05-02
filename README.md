docker-dind
===

[![Build Status](https://travis-ci.org/lsst-sqre/docker-dind.png)](https://travis-ci.org/lsst-sqre/docker-dind)

Add's a version of `ps` to the official docker "DinD" container that doesn't
blow up `docker top` with pids > 99999.

Usage
---

```sh
docker run -ti lsstsqre/docker-dind
```
