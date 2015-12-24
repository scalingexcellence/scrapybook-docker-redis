#!/bin/bash

set -e

apt-get update

apt-get install -y --no-install-recommends redis-server libhiredis-dev

mkdir -p /etc/service/redis

cp /tmp/scripts/redis.sh /etc/service/redis/run

rm -rf /var/lib/apt/lists/* /tmp/scripts
