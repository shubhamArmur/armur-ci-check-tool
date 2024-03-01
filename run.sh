#!/bin/bash
# Stop and remove the old container
docker stop armur_ci_tool_test
docker rm armur_ci_tool_test

# Remove the old image
docker rmi armur-ci-tool-test

# Build Docker image
docker build -t armur-ci-tool-test .

# Run Docker container
docker run --name armur_ci_tool_test -p 127.0.0.1:3000:3000 armur-ci-tool-test