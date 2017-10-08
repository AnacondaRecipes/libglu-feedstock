#!/bin/bash

export CFLAGS="${CFLAGS} -I${PREFIX}/include"
export LDFLAGS="${LDFLAGS} -L${PREFIX}/lib"
./configure --prefix=${PREFIX} \
            --host=${HOST}
make -j${CPU_COUNT} ${VERBOSE_AT}
make install
