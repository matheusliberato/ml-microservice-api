#!/usr/bin/env bash

# Pod name
pod_name="sklearn-flask-app-pod"
# deployment_name="sklearn-flask-app-deployment"

# Run the Docker Hub container with kubernetes
kubectl create -f kubernetes/${pod_name}.yml
# kubectl create -f kubernetes/${deployment_name}.yml

# List kubernetes pods
kubectl get pods

# Waiting for 10 secs in order to pod turns into "Running" state
# before forwarding.
# sleep 10

# Forward the container port to a host
kubectl port-forward ${pod_name} 8080:80
