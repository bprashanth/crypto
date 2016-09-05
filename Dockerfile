# TODO: ubuntu baseimage is too large, switch it with alpine
# ubuntu:15.10 crashes with gflags on --help.
From ubuntu:14.04
MAINTAINER Prashanth B <prashanthseven@gmail.com>

ENV DEBIAN_FRONTEND=noninteractive

RUN \
  apt-get update && \
  apt-get install -y libgflags-dev libgflags2

ADD crypto crypto
ENTRYPOINT ["/crypto"]
