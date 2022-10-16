#!/bin/sh

docker run --rm -p 8080:8080 \
    -v $(pwd)/assets:/www/data \
    -v $(pwd)/server/nginx.conf/:/etc/nginx/nginx.conf:ro \
    nginx:1.23.1-alpine
