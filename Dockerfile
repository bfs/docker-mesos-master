FROM boritzio/docker-mesosphere-base 

EXPOSE 5050

ENTRYPOINT /usr/sbin/mesos-master
