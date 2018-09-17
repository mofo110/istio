#!/bin/bash
INGRESS_HOST=$(minikube ip)
INGRESS_PORT=$(kubectl -n istio-system get service istio-ingressgateway -o jsonpath='{.spec.ports[?(@.name=="http2")].nodePort}')
APP_PATH="productpage"
INGRESS_URL="http://${INGRESS_HOST}:${INGRESS_PORT}/${APP_PATH}"

echo ${INGRESS_URL}

google-chrome ${INGRESS_URL}