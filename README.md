# Istio and Minikube

These are my scripts to play with Istio and Minikube.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

## Prerequisites

* Docker
* Kubectl
* Minikube

## Installation

### Install CLI
Download istio libraries.
```bash
./download_istio.sh
```
Copy the istio cli to your path.
```bash
./install_cli.sh
```

### Setup
Start up minikube.
```bash
./setup.sh
```

### Deploy Demo
Deploy the istio demo with auth.
```bash
./deploy_demo.sh
```
Validate demo.
```bash
./validate_demo.sh
```
### Deploy Book Info Sample
Deploy the book info sample.
```bash
./deploy_bookinfo.sh
```
Check the status of the services and pods until you see a `STATUS` of `Running`.
```bash
./validate_bookinfo.sh
```
Test the book info sample.
```bash
./test_bookinfo.sh
```

## Clean up

### Remove Book Info Sample
Remove the book info sample.
```bash
./remove_bookinfo.sh
```

### Teardown
Clean it all up.
```bash
./teardown.sh
```
### Remove CLI
Remove the istio cli.
```bash
./remove_cli.sh
```

## Built With
* [Istio Quickstart](https://istio.io/docs/setup/kubernetes/quick-start/)
* [Istio 101 with Minikube](https://meteatamel.wordpress.com/2018/04/24/istio-101-with-minikube/)
* [Istio Ingress](https://preliminary.istio.io/docs/tasks/traffic-management/ingress.html#determining-the-ingress-ip-and-ports)
* [Bookinfo Sample](https://istio.io/docs/examples/bookinfo/)

## Authors
* **mofo110** - *Initial work* - [mofo110](https://github.com/mofo110)
