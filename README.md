Overview
========
[![Build Status](https://travis-ci.org/EricCrosson/latex-cmake.svg?branch=travis-ci)](https://travis-ci.org/EricCrosson/latex-cmake)
[![image](https://imagelayers.io/badge/hamroctopus/latex-cmake:latest.svg)](https://imagelayers.io/?images=hamroctopus/latex-cmake:latest)
[![image](https://img.shields.io/badge/docker-ready-blue.svg)](https://hub.docker.com/r/hamroctopus/latex-cmake/)
[![image](https://img.shields.io/docker/pulls/hamroctopus/latex-cmake.svg?maxAge=2592000)](https://hub.docker.com/r/hamroctopus/latex-cmake/)
[![image](https://img.shields.io/docker/stars/hamroctopus/latex-cmake.svg?maxAge=2592000)](https://hub.docker.com/r/hamroctopus/latex-cmake/)

This project provides a [docker](https://www.docker.com/) container
encapsulating a [LaTeX](https://www.latex-project.org/) and
[cmake](https://cmake.org/) build environment.

Provenance
----------

This container uses
[tianon/latex](https://hub.docker.com/r/tianon/latex/) as a base.

Contents
--------

This image contains the following packages

-   cmake 3.4.0
-   make 4.0
-   poppler-utils 0.26.5-2+deb8u1
-   gcc 4.9.2
-   curl 7.38.0a-4+deb8u3

Use
---

There are two use cases for this docker container, autopilot and manual
control. Both require mounting your directory with latex sources as
`/data` in the container.

### Autopilot

Invoking this container without arguments will run the standard cmake
build routine, i.e.

``` bash
docker run -v $(pwd):/data hamroctopus/latex-cmake
```

will tell the container to mount the current directory and execute the
following

``` bash
mkdir build
cd build
cmake ..
make
```

### Manual

If your build pattern deviates from the above, pass your custom
instructions as arguments

``` bash
docker run -v $(pwd):/data hamroctopus/latex-cmake step1 && step2 && step3
```
