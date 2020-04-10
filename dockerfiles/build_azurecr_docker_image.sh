#!/bin/bash
STRIIM_DEB_TAG=$1
STRIIM_NODE_URL=$2
STRIIM_DBMS_URL=$3

cd "$( dirname "${BASH_SOURCE[0]}" )"
docker build --no-cache=true --build-arg STRIIM_DBMS_URL=${STRIIM_DBMS_URL} -t striim-mdr ./striim-db/
docker tag striim-mdr:latest $AZURECR_ENDPOINT/striim/striim-mdr:latest
docker push $AZURECR_ENDPOINT/striim/striim-mdr:latest
docker tag  $AZURECR_ENDPOINT/striim/striim-mdr:latest $AZURECR_ENDPOINT/striim/striim-mdr:${STRIIM_DEB_TAG}
docker push $AZURECR_ENDPOINT/striim/striim-mdr:${STRIIM_DEB_TAG}
docker rmi striim-mdr
docker rmi $AZURECR_ENDPOINT/striim/striim-mdr:latest
docker rmi $AZURECR_ENDPOINT/striim/striim-mdr:${STRIIM_DEB_TAG}


docker build --no-cache=true --build-arg STRIIM_NODE_URL=${STRIIM_NODE_URL} -t striim-node ./striim-node/
docker tag striim-node:latest $AZURECR_ENDPOINT/striim/striim-node:latest
docker push $AZURECR_ENDPOINT/striim/striim-node:latest
docker tag $AZURECR_ENDPOINT/striim/striim-node:latest $AZURECR_ENDPOINT/striim/striim-node:${STRIIM_DEB_TAG}
docker push $AZURECR_ENDPOINT/striim/striim-node:${STRIIM_DEB_TAG}
docker rmi striim-node
docker rmi $AZURECR_ENDPOINT/striim/striim-node:latest
docker rmi $AZURECR_ENDPOINT/striim/striim-node:${STRIIM_DEB_TAG}
