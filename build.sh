#!/bin/sh

version=${1:-xxx}
custom_registry=xxx

#linux/arm/v7,
docker buildx build --builder=container --platform linux/arm64,linux/amd64 --push -f docker/Dockerfile -t "${custom_registry}/osrm-frontend:$version" .
