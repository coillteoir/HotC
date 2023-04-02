#!/bin/sh

set -xe

cc -o bin/hotC src/main.c
./bin/hotC test.c

