FROM ubuntu:latest

RUN \
  apt-get install -y software-properties-common
RUN \
  add-apt-repository -y ppa:jonathonf/gcc-9.0
RUN \
  apt-get update

RUN \
  apt-get install -y gcc-9

RUN \
  apt-get install -y \
    make \
    curl \
    git \
    htop \
    man \
    unzip \
    vim \
    nano \
    wget \
    && \
  echo "installed creature comforts"
