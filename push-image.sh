#!/bin/bash

if [ -z "$1" ]
then
  echo "Please provide a version number, like v1.2.3"
  exit 1
fi

IMAGE=$REGISTRY_URL/k8s-lunch-and-learn:$1

docker build -t $IMAGE .
docker push $IMAGE
