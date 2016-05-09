#!/bin/bash

#defaults
export MESOS_WORK_DIR=${MESOS_WORK_DIR:-"/tmp"}

#to handle the case of passing in the credentials json in environment variables rather than as a path like mesos expects
if [[ "$MESOS_CREDENTIALS" == {* ]]; then
  credentials_path=/credentials_from_env
  echo "Converting credentials to file"
  echo "$MESOS_CREDENTIALS" > $credentials_path
  chmod 600 $credentials_path
  export MESOS_CREDENTIALS=$credentials_path
fi

[ -z "$MESOS_IP" ] && echo "MESOS_IP is not assigned -- this is okay if you're using host networking, but will fail otherwise"

/usr/sbin/mesos-master
