#!/bin/sh

set -xe

if [ ! -d "./bin/" ]
then
	mkdir bin
fi

cc -o bin/hotC src/main.c
./bin/hotC test.c

