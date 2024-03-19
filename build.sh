#!/bin/bash



# Setup buildx
docker buildx create \
  --name multi-arch-builder \
  --driver docker-container \
  --use

docker buildx inspect \
  --bootstrap \
  --builder multi-arch-builder

# Build the image
docker buildx build \
  --platform linux/amd64,linux/arm64 \
  --tag ${GITHUB_REPOSITORY}:latest \
  --push \
  .