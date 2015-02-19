#!/bin/bash

#defaults
export MESOS_WORK_DIR=${MESOS_WORK_DIR:-"/tmp"}
export MESOS_PORT=${MESOS_PORT:-"5050"}

/usr/sbin/mesos-master