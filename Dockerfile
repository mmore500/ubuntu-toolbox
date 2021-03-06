FROM ubuntu:latest

RUN \
  apt-get update \
    && \
  echo "apt-get updated"

RUN \
  apt-get install -y software-properties-common \
    && \
  echo "enabled add-apt-repository"

RUN \
  add-apt-repository ppa:ubuntu-toolchain-r/test \
    && \
  echo "added ubuntu-toolchain-r repository"
  
RUN \
  apt-get update \
    && \
  echo "apt-get updated (again)"

RUN \
  apt-get install -y \
    gcc \
    g++ \
    clang \
    && \
  echo "installed compilers"

RUN \
  apt-get install -y \
    gdb \
    valgrind \
    && \
  echo "installed profiling and debugging tools"

RUN \
  apt-get install -y \
    python3-pip \
    && \
  echo "installed pip3"
  
RUN \
  pip3 install \
    keyname \
    fileshash \
    iterpop \
    numpy \
    pandas \
    scipy \
    statsmodels \
    matplotlib \
    seaborn \
    python-slugify \
    && \
  echo "installed python packages"

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
