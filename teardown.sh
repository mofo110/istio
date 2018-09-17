#!/bin/bash
eval $(minikube docker-env)

# Cleanup Docker
docker kill $(docker ps -q)
docker rmi -f $(docker images -a -q)

minikube stop
eval $(minikube docker-env -u)
minikube delete

rm -rf ~/.minikube
rm -rf ~/.kube