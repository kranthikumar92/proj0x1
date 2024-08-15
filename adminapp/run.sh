#!/bin/bash

# Build the Docker image
docker build -t adminapp-test .

# Start the Docker Compose services
docker-compose up -d
