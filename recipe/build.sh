#!/bin/bash

if [[ ${HOST} =~ .*darwin.* ]]; then
  export CPPFLAGS="${CPPFLAGS} -framework OpenGL"
  export LDFLAGS="${LDFLAGS} -framework OpenGL"
fi
./configure --prefix=${PREFIX} \
            --build=${BUILD} \
            --host=${HOST}
make -j${CPU_COUNT} ${VERBOSE_AT}
make install
