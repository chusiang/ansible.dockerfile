#!/bin/bash

DOCKER_IMAGE="chusiang/ansible"
DOCKER_TAG="2.4"

echo '===> Pull current image ...'
docker pull $DOCKER_IMAGE:$DOCKER_TAG
echo

echo '===> Tag current image to latest ...'
docker tag $DOCKER_IMAGE:$DOCKER_TAG $DOCKER_IMAGE:latest
echo

echo '===> Push the latest tag ...'
docker push $DOCKER_IMAGE:latest
echo

echo '===> Remove old image ...'
docker rmi $(docker images | grep 'chusiang/ansible' | grep '<none>' | awk '{ print $3 }')
