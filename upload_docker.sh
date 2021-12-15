#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=lodakins/uda_micro:latest

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker tag uda_micro:latest lodakins/uda_micro:latest

# Step 3:
# Push image to a docker repository
docker push lodakins/uda_micro:latest
