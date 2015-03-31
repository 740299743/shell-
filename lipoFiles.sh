#!/bin/sh

for fname in arm64/*

do

    export LIB_NAME=fname
    lipo -arch armv7 armv7/$LIB_NAME -arch armv7s armv7s/$LIB_NAME

done
