FROM boritzio/docker-mesosphere-base 

EXPOSE 5050

VOLUME ["/config"]

ADD start.sh /etc/my_init.d/mesos-master.sh