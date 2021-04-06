#!/bin/bash
set -e

# remove the old /dist
rm -rf ./output

# build the image from Dockerfile
docker build -t puppeteer-docker .

# run the container from image
docker run --name=puppeteer-docker puppeteer-docker

# copy from the exited container
docker cp puppeteer-docker:/app/output ./output

# remove the container
docker rm puppeteer-docker
