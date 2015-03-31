##!/bin/sh

rm -f aconfigure

sudo chmod 777 aconfigure

./aconfigure --host=arm-apple-darwin9 --enable-g729-codec --disable-sdl $*

make clean & make distclean

export ARCH='-arch arm64'

./configure-iphone

make dep && make clean && make



