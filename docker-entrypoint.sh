#!/bin/bash
# 2016-06-09
# Autopilot cmake build routine
set -e

if [[ -z "$@" ]]; then
    mkdir -p build
    cd build
    cmake ..
    make
else
    exec -- bash -c "$@"
fi
