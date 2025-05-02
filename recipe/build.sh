#!/bin/bash

mkdir -p build
meson setup build ${MESON_ARGS} --prefix=${PREFIX}

# Build and install
meson compile -C build
meson install -C build
