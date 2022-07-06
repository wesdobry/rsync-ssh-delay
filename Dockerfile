FROM ubuntu:latest


ENV container docker
ENV LC_ALL C
ENV DEBIAN_FRONTEND noninteractive

ARG build_rev=0

#MAINTAINER definition
LABEL maintainer="Wes Dobry <wesdobry@wesdobry.com>"

# Install rsync and SSH.
RUN apt-get update && \
 apt-get upgrade -y && \
 apt-get -y install --no-install-recommends \
            rsync \
            openssh-client \
            ca-certificates && \
 apt-get clean && \
 rm -rf \
        /var/lib/apt/lists/* \
        -rf /tmp/* 

COPY root/ /

WORKDIR /opt/rsync-ssh-delay

ENTRYPOINT ["/opt/rsync-ssh-delay/entrypoint.sh"]

