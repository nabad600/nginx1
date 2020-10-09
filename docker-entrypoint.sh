#!/bin/bash

set -e

echo "upstream php-upstream { server ${CONTAINER_NAME}:${PORT}; }" > /etc/nginx/conf.d/upstream.conf \
    && rm /etc/nginx/conf.d/default.conf

exec "$@"
