FROM tianon/latex
MAINTAINER Eric Crosson (eric.s.crosson@utexas.edu)

RUN apt-get update -qq && apt-get install -qq -y \
    build-essential \
    cmake \
    make \
    g++ \
    curl

RUN curl -sSL https://cmake.org/files/v3.4/cmake-3.4.0-Linux-x86_64.tar.gz | tar -xzC /opt
RUN ln -s /opt/cmake-3.4.0-Linux-x86_64/bin/cmake /usr/bin/cmake
