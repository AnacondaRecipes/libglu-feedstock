#!/bin/bash

mkdir -p build
# Without ${PREFIX}/lib the library will be installed to $PREFIX/lib64.
meson setup build ${MESON_ARGS} \
    --prefix=${PREFIX} \
    --libdir=${PREFIX}/lib

# Build and install
meson compile -C build
meson install -C build
