#!/bin/bash
set -e

# remove the old /output
rm -rf ./output

# build the image from Dockerfile
docker build -t puppeteer-docker .

# run the container from image
docker run \
       --rm \
       --name=puppeteer-docker \
       --volume="$(pwd)/output:/app/output" \
       puppeteer-docker
