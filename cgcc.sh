#!/bin/sh -xe

export PREFIX="$PWD/cross"
export TARGET=amd64-elf
export PATH="$PREFIX/bin:$PATH"

cd gcc*
./configure --target=$TARGET --prefix="$PREFIX" --disable-nls --enable-languages=c,c++ --without-headers
# -j1 because I got an Out of Memory
make all-gcc -j1
#make all-target-libgcc
make install-gcc
