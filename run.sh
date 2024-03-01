#!/bin/bash
# Stop and remove the old container
docker stop armur-ci-tool-test
docker rm armur-ci-tool-test

# Remove the old image
docker rmi armur-ci-tool-test

# Build Docker image
docker build -t armur-ci-tool-test .

# Run Docker container
docker run -p 127.0.0.1:3000:3000 armur-ci-tool-test