FROM boritzio/docker-mesosphere-base 

RUN apt-get install -y mesos

EXPOSE 5050

ADD start_mesos_master.sh /etc/my_init.d/mesos-master.sh
