#!/bin/bash
eval $(minikube docker-env)

kubectl apply -f ./istio-1.0.2/install/kubernetes/helm/istio/templates/crds.yaml

kubectl apply -f ./istio-1.0.2/install/kubernetes/istio-demo-auth.yaml
