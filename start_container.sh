#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull ekechei/demo_website

# Run the Docker image as a container
docker run -d -p 80:800 ekechei/demo_website





