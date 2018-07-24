#!/bin/sh

if [ $# -ne 1 ]; then
    echo "You must specfiy fluentd data volume directory path." >&2
    exit 1
fi

VOLUME_PATH=$1
IMAGE_NAME=logging_server_image

docker run -it -d \
    -p 514:514 \
    -p 514:514/udp \
    -v ${VOLUME_PATH}:/fluentd \
    --name logger \
    ${IMAGE_NAME}

