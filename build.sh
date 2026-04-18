#!/bin/bash

ENV=$1

if [ "$ENV" == "dev" ]; then
    IMAGE_NAME="ojasvijay/dev:ecommerce"
elif [ "$ENV" == "prod" ]; then
    IMAGE_NAME="ojasvijay/prod:ecommerce"
else
    echo "Usage: ./build.sh [dev|prod]"
    exit 1
fi

echo "Building Docker Image for $ENV..."

docker build -t $IMAGE_NAME .

echo "Docker Image Built: $IMAGE_NAME"

