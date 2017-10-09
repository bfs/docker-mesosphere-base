FROM boritzio/docker-base-java

RUN DISTRO=$(lsb_release -is | tr '[:upper:]' '[:lower:]') && \
    CODENAME=$(lsb_release -cs) && \
    echo "deb http://repos.mesosphere.com/${DISTRO}/ ${CODENAME} main" > /etc/apt/sources.list.d/mesosphere.list > /etc/apt/sources.list.d/mesosphere.list && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv E56151BF && \
    apt-get update && \ 
    apt-get install -y mesos=1.3.1-2.0.1 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
