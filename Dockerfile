# https://hub.docker.com/_/alpine
ARG alpine_ver=3.16
FROM alpine:${alpine_ver}

ARG build_rev=0

#MAINTAINER definition
LABEL maintainer="Wes Dobry <wesdobry@wesdobry.com>"


# Install rsync and SSH.
RUN apk update \
 && apk upgrade \
 && apk add --no-cache \
            rsync \
            openssh-client-default \
            ca-certificates \
 && update-ca-certificates \
 && rm -rf /var/cache/apk/*

 COPY root/ /