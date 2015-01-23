# docker-mesos-master
Docker build for mesos-master based on the mesosphere deb package

### Environment variables
Defined here:
http://mesos.apache.org/documentation/latest/configuration/

You can use most mesos config options by passing them in as environment variables with the pefix "MESOS_"

### Starting

```bash
docker run --restart=on-failure:10 --name mesos-master -p 5050:5050 -m 1g -e MESOS_ZK=zk://ops100:2181,ops110:2181,ops120:2181/mesos -e MESOS_CLUSTER=factual-mesosphere -e MESOS_WORK_DIR=/disk/ssd/data/mesos-master -e MESOS_QUORUM=2 boritzio/docker-mesos-master
```
