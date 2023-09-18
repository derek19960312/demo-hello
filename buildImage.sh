#!/bin/bash
# user para
un=********
pd=********
# proj para
dockerfile=Dockerfile

# docker para
#dockerhub=********
dockerhub=docker.io
projname=**********
imagename=**********

#version=$(date +%Y%m%d%H%M%S)
version=arm64

# docker hub proj
dockertag=${dockerhub}/${projname}/${imagename}:${version}

docker login ${dockerhub} -u un -p pd
docker buildx build -f ${Dockerfile} -t ${dockertag} .
#  --platform linux/amd64 \
#  --platform linux/arm64 \
  --push \
