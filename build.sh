#!/bin/bash

IMAGE_NAME="ojasvijay/dev:ecommerce"

echo "Building Docker Image..."

docker build -t $IMAGE_NAME .

echo "Docker Image Built Successfully"
