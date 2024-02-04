#!/usr/bin/env bash

if [ -z "$1" ]; then
    WORK_DIR=$(pwd)
else
    WORK_DIR=$(realpath "$1")
fi

echo "WORK_DIR: $WORK_DIR"

IMAGE_NAME="nginx-unity"

docker run -it --rm \
    -v $WORK_DIR:/usr/share/nginx/html \
    -p 127.0.0.1:80:80 \
    -p 127.0.0.1:443:443 \
    darklinden/nginx-unity
