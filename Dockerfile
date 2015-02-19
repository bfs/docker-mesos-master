FROM boritzio/docker-mesosphere-base 

EXPOSE 5050

ADD start_mesos_master.sh /etc/my_init.d/mesos-master.sh
