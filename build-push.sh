#!/bin/bash

./mvnw clean package

cp src/main/docker/Dockerfile target/

cd target || exit

docker build . -t ghcr.io/veqox/kubernetes-demo:latest

docker push ghcr.io/veqox/kubernetes-demo:latest

cd ..

rm -rf target/Dockerfile

echo "Build and push completed"