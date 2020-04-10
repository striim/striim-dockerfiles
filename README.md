# Striim on Docker

Docker images along with docker-compose scripts for deploying and running Striim Platform.

Pre-built images are available on Docker Hub. Please contact support@striim.com
if you run in to any issues with the docker images.

## Supported Deployment 

## oraclexe

Dockerfiles for running an Oracle XE 11G database with scripts to turn on audit log.

## cluster

Docker compose for bringing up a striim cluster with ability to scale up/down striim nodes with inbuilt metadata repository.

## cluster-with-external-mdr

Docker compose for bringing up striim cluster with ability to use an Oracle or Postgres as Metadata repository.

## kubernetes

kubernetes config files for various scenarios.

## Build your custom Striim Node and DBMS containers

```
cd customize-container/
docker build --no-cache=true \
  --build-arg STRIIM_NODE_URL=<http-url-to-download-striim-node-rpm> \
  -t <custom-node-image-name> ./striim-node
docker build --no-cache=true \
  --build-arg STRIIM_DBMS_URL=<http-url-to-download-striim-dbms-rpm> \
  -t <custom-dbms-image-name> ./striim-dbms
```

## Testing status

This has only been tested with docker on linux.
Not tested with docker on mac and windows.
