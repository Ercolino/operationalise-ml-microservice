#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="fciccarese/udacity-project-four:latest"

# Step 2:  
# Authenticate & tag
docker login --username=fciccarese
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker tag udacity-project-four:latest $dockerpath
docker push $dockerpath
