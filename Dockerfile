FROM boritzio/docker-base-java

RUN echo "deb http://repos.mesosphere.io/ubuntu/ trusty main" > /etc/apt/sources.list.d/mesosphere.list && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv E56151BF

RUN apt-get update
RUN apt-get install -y mesos