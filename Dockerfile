FROM ubuntu:14.04

RUN echo "deb http://repos.mesosphere.io/ubuntu/ trusty main" > /etc/apt/sources.list.d/mesosphere.list && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv E56151BF && \
    apt-get update

RUN apt-get update && apt-get -y install mesos 

EXPOSE 5050

ENTRYPOINT /usr/sbin/mesos-master
