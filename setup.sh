#!/bin/bash
minikube start \
  --memory=4096 --cpus=2 --kubernetes-version=v1.10.0 \
  --extra-config=controller-manager.cluster-signing-cert-file="/var/lib/localkube/certs/ca.crt" \
  --extra-config=controller-manager.cluster-signing-key-file="/var/lib/localkube/certs/ca.key"

eval $(minikube docker-env)

minikube status

kubectl config use-context minikube