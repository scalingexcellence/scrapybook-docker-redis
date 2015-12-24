#!/bin/sh

set -e

RUNDIR=/var/run/redis
PIDFILE=$RUNDIR/redis.pid

mkdir -p $RUNDIR
touch $PIDFILE
chown redis:redis $RUNDIR $PIDFILE
chmod 755 $RUNDIR

exec /sbin/setuser redis /usr/bin/redis-server
