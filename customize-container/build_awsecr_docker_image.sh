#!/bin/bash

STRIIM_RPM_TAG=$1
STRIIM_NODE_URL=$2
STRIIM_DBMS_URL=$3

docker rmi -f $(docker images | grep "^<none>" | awk "{print $3}")

aws ecr get-login --region us-west-1 | bash

docker build --build-arg STRIIM_DBMS_URL=${STRIIM_DBMS_URL} -t striim-mdr ./striim-dbms/
docker tag striim-mdr:latest $ECR_ENDPOINT/striim-mdr:latest
docker push $ECR_ENDPOINT/striim-mdr:latest
docker tag striim-mdr:latest $ECR_ENDPOINT/striim-mdr:${STRIIM_RPM_TAG}
docker push $ECR_ENDPOINT/striim-mdr:${STRIIM_RPM_TAG}
docker rmi striim-mdr

docker build --build-arg STRIIM_NODE_URL=${STRIIM_NODE_URL} -t striim-node ./striim-node/
docker tag striim-node:latest $ECR_ENDPOINT/striim-node:latest
docker push $ECR_ENDPOINT/striim-node:latest
docker tag striim-node:latest $ECR_ENDPOINT/striim-node:${STRIIM_RPM_TAG}
docker push $ECR_ENDPOINT/striim-node:${STRIIM_RPM_TAG}
docker rmi striim-node
