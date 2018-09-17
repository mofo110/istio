#!/bin/bash
eval $(minikube docker-env)

# Manually inject sidecar proxy with bookinfo app, then deploy
kubectl apply -f <(istioctl kube-inject -f ./istio-1.0.2/samples/bookinfo/platform/kube/bookinfo.yaml)

# Define the ingress gateway
kubectl apply -f ./istio-1.0.2/samples/bookinfo/networking/bookinfo-gateway.yaml
kubectl get gateway