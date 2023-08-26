#!/bin/bash

# build docker image
docker build -t ghcr.io/kusumaningrat/karsajobs-ui:latest .
# login to ghcr
echo $TOKEN | docker login ghcr.io -u $username --password-stdin
# push docker image
docker push ghcr.io/kusumaningrat/karsajobs-ui:latest
