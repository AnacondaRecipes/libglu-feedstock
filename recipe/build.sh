#!/bin/bash

export CFLAGS="${CFLAGS} -I${PREFIX}/include"
export LDFLAGS="${LDFLAGS} -L${PREFIX}/lib"
if [[ ${HOST} =~ .*darwin.* ]]; then
  export CPPFLAGS="${CPPFLAGS} -framework OpenGL"
  export LDFLAGS="${LDFLAGS} -framework OpenGL"
fi
./configure --prefix=${PREFIX} \
            --host=${HOST}
make -j${CPU_COUNT} ${VERBOSE_AT}
make install
