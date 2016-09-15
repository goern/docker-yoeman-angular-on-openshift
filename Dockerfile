FROM centos:centos7

ADD node-v4.5.0-linux-x64.tar.xz /opt

ENV PATH /opt/node-v4.5.0-linux-x64/bin:$PATH

RUN yum install --setopt=tsflags=nodocs -y git && \
    npm install -g grunt-cli bower yo generator-karma generator-angular && \
    adduser yeoman && \
    echo "yeoman ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# LABEL RUN "docker run --rm -ti -p 9000:9000 -v $(pwd)/myproject:/home/yeoman:Z goern/yeoman-centos7 grunt serve"

USER yeoman
ENV HOME /home/yeoman
WORKDIR /home/yeoman

EXPOSE 9000
