#!/bin/bash

mvn -B package --file pom.xml
cp src/main/docker/Dockerfile target/
cd target || exit 1
docker build . -t ghcr.io/$GITHUB_ACTOR/$GITHUB_REPOSITORY:latest
docker login ghcr.io -u $GITHUB_ACTOR -p $GITHUB_TOKEN
docker push ghcr.io/$GITHUB_ACTOR/$GITHUB_REPOSITORY:latest