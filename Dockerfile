FROM boritzio/docker-zookeeper

RUN echo "deb http://repos.mesosphere.io/ubuntu/ trusty main" > /etc/apt/sources.list.d/mesosphere.list && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv E56151BF

RUN DEBIAN_FRONTEND=noninteractive; apt-get update; apt-get -y install mesosphere