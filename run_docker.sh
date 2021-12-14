#!/usr/bin/env bash
## Complete the following steps to get Docker running locally

# Step 1:
docker build --tag uda_microservice .

# Step 2:
docker images

# Step 3:
docker run uda_microservice -d -p 8000:8000  --name uda_microservice_container
