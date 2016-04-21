#!/bin/bash

#defaults
export MESOS_WORK_DIR=${MESOS_WORK_DIR:-"/tmp"}
export MESOS_PORT=${MESOS_PORT:-${PORT:-5050}}
export MESOS_HOSTNAME=${MESOS_HOSTNAME:-${HOSTNAME:-`hostname`}}

if [ ! -z "$MESOS_CREDENTIALS" ]; then
  echo "$MESOS_CREDENTIALS" > /credentials
  chmod 600 /credentials
  export MESOS_CREDENTIALS='/credentials'
fi

[ -z "$MESOS_IP" ] && echo "MESOS_IP is not assigned -- this is okay if you're using host networking, but will fail otherwise"

echo "Starting Mesos Master"
echo "-------Mesos ENV Variables-------"
env | grep MESOS
echo "----end Mesos ENV Variables----"

/usr/sbin/mesos-master
