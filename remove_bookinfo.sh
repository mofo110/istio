#!/bin/bash
eval $(minikube docker-env)

./istio-1.0.2/samples/bookinfo/platform/kube/cleanup.sh

kubectl get virtualservices