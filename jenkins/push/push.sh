#!/bin/bash

echo "======================="
echo "==== Pushing image ===="
echo "======================="

IMAGE="maven-project"

echo "==== Login to docker hub ===="

docker login -u rlss91 -p $PASS

echo "==== tag the image ===="

docker tag $IMAGE:$BUILD_TAG rlss91/$IMAGE:$BUILD_TAG

echo "==== pushing image to docker hub ===="

docker push rlss91/$IMAGE:$BUILD_TAG

