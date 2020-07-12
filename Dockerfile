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
    gcc-9 \
    gcc \
    g++ \
    llvm-toolchain-9 \
    clang \
    clang++ \
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
