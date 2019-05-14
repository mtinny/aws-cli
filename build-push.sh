#!/bin/bash

set -eux

regi=mtinny
repo=aws-cli
tag=${tag:-v0.0.2}

image=${regi}/${repo}:${tag}
latest_image=${regi}/${repo}:latest

docker build -t ${image} .
docker tag ${image} ${latest_image}

docker push ${image}
docker push ${latest_image}
