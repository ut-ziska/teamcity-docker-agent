#!/bin/bash

if [ ! -z "$DOCKER_OPTS" ]; then
    echo "DOCKER_OPTS=\"$DOCKER_OPTS\"" >> /etc/default/docker
    echo "Adding DOCKER_OPTS to /etc/default/docker"
fi

if [ "$DOCKER_IN_DOCKER" = "start" ] ; then
 rm /var/run/docker.pid 2>/dev/null
 service docker start
 echo "Docker daemon started"
fi
