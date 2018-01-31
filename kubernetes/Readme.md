# Striim Cluster - Kubernetes

This repo contains kubernetes reference configuration files for all the deployment , volumes and services.

This is similiar to the cluster docker-compose in that it creates deployment for both Metadata repository and striim node services

## Setting up system
Here we are going to demonstrate using minikube. Kubernetes system comprisesof kubectl which allows you to interact with kubernetes cluster and kubernetes cluster. There are many [flavours of kubernetes cluster](https://kubernetes.io/docs/setup/pick-right-solution/). It is beyond the scope of this document to describe various falvour. This document will describe testing Striim images with [minikube, which is a kubernetes dev and test tool for single node](https://kubernetes.io/docs/tutorials/stateless-application/hello-minikube/#before-you-begin).
Irrespective of the flavor, the command to bring up striim remains same
 
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

## Pre start steps 
* Verify kubectl is configured to access kubernetes cluster

````
$ kubectl cluster-info
````

* Modify the kubernetes config file 
Please check for configuration marked with Modify . Some of these values would be recieved with your license 
Some of them are specific to your environment

## Start striim service

* Create all kubernetes resources (volumes, deployment, services). You will find three config files. Striim evaluation version , Striim prod images with inbuilt MDR and Striim prod images with external MDR

````
$  kubectl create -f <yaml-file>
````
## Post start verification 
* Verify from logs the striim server is started up

````
$ kubectl get pods
NAME                          READY     STATUS    RESTARTS   AGE
striim-node-8dbb4cbff-q774z   1/1       Running   4          53m
$ kubectl logs striim-node-8dbb4cbff-q774z
.....
.....

````

* Open the WebUI

````
$ minikube service striim-node --url
http://192.168.64.4:31887
````

