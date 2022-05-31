#!/bin/sh -xe
mkdir cross

export PREFIX="$PWD/cross"
export TARGET=amd64-elf
export PATH="$PREFIX/bin:$PATH"

cd binutils*
./configure --target=$TARGET --prefix="$PREFIX" --with-sysroot --disable-nls --disable-werror
make -j`ncores`
make install
