#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=lodakins/uda_micro:latest

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment uda-ml --image=${dockerpath}
# aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 222619198456.dkr.ecr.us-east-1.amazonaws.com
# docker tag uda-micro:latest 222619198456.dkr.ecr.us-east-1.amazonaws.com/udapeople-ml:latest
# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl port-forward service/uda-ml 8000:80

