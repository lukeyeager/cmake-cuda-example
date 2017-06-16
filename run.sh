#!/bin/bash
set -e
set -x

cd "$( dirname "${BASH_SOURCE[0]}" )"

rm -rf build
mkdir build
cd build
cmake .. $@
make
./diana
