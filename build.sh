#!/bin/sh

set -eu

PROJECT=jtag

docker build -t ${PROJECT} -f Dockerfile .
docker run -v "${PWD}:/mnt" ${PROJECT} bash -c "cp -v /code/jtag/*.hex /mnt"
