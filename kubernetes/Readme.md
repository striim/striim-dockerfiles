# Striim Cluster - Kubernetes

This repo contains kubernetes reference configuration files for all the deployment , volumes and services.

This is similiar to the cluster docker-compose in that it creates deployment for both Metadata repository and striim node services

## Setting up system
Here we are going to demonstrate using minikube. Kubernetes system comprisesof kubectl which allows you to interact with kubernetes cluster and kubernetes cluster. There are many [flavours of kubernetes cluster](https://kubernetes.io/docs/setup/pick-right-solution/). It is beyond the scope of this document to describe various falvour. This document will describe testing Striim images with [minikube, which is a kubernetes dev and test tool for single node](https://kubernetes.io/docs/tutorials/stateless-application/hello-minikube/#before-you-begin)
 
* Install minikube

````
$ curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-darwin-amd64 && \
  chmod +x minikube && \
  sudo mv minikube /usr/local/bin/
````
* Install kubectl

````
$ brew install kubectl
````
* Start minikube

````
$ minikube start --vm-driver=xhyve
````

* Configure kubectl to use minikube config

````
$ kubectl config use-context minikube
````

## Steps to test Production images with minikube and kubectl

Once minikube is installed setup and kubectl configured to use that, you can proceed to use kubernetes config file to get a striim cluster up

* Get Striim kubernetes configuration files

````
$ git clone https://github.com/striim/striim-dockerfiles.git
$ cd kubernetes
````

* Create all kubernetes resources (volumes, deployment, services)

````
$  kubectl create -f striim-cluster.yaml
````

* Open the WebUI

````
$ minikube service striim-node
````

## Steps to test evalversion 
Once minikube is installed setup and kubectl configured to use that, you can proceed to use kubernetes config file to get a striim evalversion up

* Get Striim kubernetes configuration files

````
$ git clone https://github.com/striim/striim-dockerfiles.git
$ cd kubernetes
````

* Create all kubernetes resources (volumes, deployment, services)

````
$  kubectl create -f striim-eval.yaml
````

* Open the WebUI

````
$ minikube service striim-evalversion
````