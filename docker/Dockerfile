FROM debian:stretch
LABEL maintainer="Vuicoin Developers <dev@vuicoin.org>"
LABEL description="Dockerised VuicoinCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
