#!/bin/bash

# Build the Docker image
docker build -t hostel4u-test .

# Start the Docker Compose services
docker-compose up -d

# Show the logs
echo "Showing logs..."
docker-compose logs -f