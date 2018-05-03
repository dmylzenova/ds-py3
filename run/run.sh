#!/bin/bash

set -e

notebooks_vol=${DS_NOTEBOOKS_DIR:-`pwd`/notebooks}
config_vol=${DS_CONFIG_DIR:-`pwd`/config}
secret_vol=${DS_SECRET_DIR:-`pwd`/secret}
port=${DS_PORT:-8889}
image=${DS_IMAGE:-analysiscenter1/ds-py3:gpu-1.6}


sudo docker run --runtime=nvidia --rm -p ${port}:8888 -p 8097:8097 -p 5000:5000 -p 9090:9090\
  -v ${notebooks_vol}:/notebooks \
  -v ${config_vol}:/jupyter/config \
  -v ${secret_vol}:/jupyter/secret \
  $@ \
  ${image}
