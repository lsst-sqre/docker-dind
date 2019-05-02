ARG BASE_IMAGE=docker:18.09.5-dind
FROM $BASE_IMAGE

# pids > 99999 break busybox's `ps`, which breaks `docker top`, which breaks jenkins docker-workflow-plugin. procps-ng does not have this issue.
# https://github.com/moby/moby/issues/34282
# https://bugs.busybox.net/show_bug.cgi?id=11826
RUN apk add --no-cache --upgrade procps
