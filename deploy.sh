#!/bin/bash

CONTAINER_NAME="ecommerce_app"

echo "Stopping existing container..."
docker stop $CONTAINER_NAME || true
docker rm $CONTAINER_NAME || true

echo "Deploying new container..."
docker-compose up -d --build

echo "Deployment completed"
