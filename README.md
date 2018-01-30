Docker Images for Striim Platform
=====

Docker Images along with docker-compose scripts for deploying and running Striim Platform
The images are available in private Azure Container Registry. Please contact support@striim.com
to get access to the docker images

# Supported Deployment 
## oraclexe
Dockerfiles for running an Oracle XE 11G database with scripts to turn on audit log
## cluster
Docker compose for bringing up a striim cluster with ability to scale up/down striim nodes with inbuilt metadata repository
## cluster-with-external-mdr
Docker compose for bringing up striim cluster with ability to use an Oracle or Postgres as Metadata repository
## kubernetes
kubernetes config files for various scenarios


# Testing status
This has only been tested with docker on linux.
Not tested with docker on mac and windows

