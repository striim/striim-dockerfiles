#!/bin/bash
STRIIM_DEB_TAG=$1


cd "$( dirname "${BASH_SOURCE[0]}" )"
docker rmi -f $(docker images | grep "^<none>" | awk "{print $3}")

docker pull openjdk:8

# Striim DBMS
docker build --no-cache=true --build-arg STRIIM_DEB_TAG=${STRIIM_DEB_TAG} -t striim/striim-dbms ./striim-db/
docker tag striim/striim-dbms:latest striim/striim-dbms:${STRIIM_DEB_TAG}
docker push striim/striim-dbms:latest
docker push striim/striim-dbms:${STRIIM_DEB_TAG}
docker rmi striim/striim-dbms:latest
docker rmi striim/striim-dbms:${STRIIM_DEB_TAG}

# Striim Node
docker build --no-cache=true --build-arg STRIIM_DEB_TAG=${STRIIM_DEB_TAG} -t striim/striim-node ./striim-node/
docker tag striim/striim-node:latest striim/striim-node:${STRIIM_DEB_TAG}
docker push striim/striim-node:latest
docker push striim/striim-node:${STRIIM_DEB_TAG}
docker rmi striim/striim-node:latest
docker rmi striim/striim-node:${STRIIM_DEB_TAG}

