#!/bin/sh

set -xe

cc -o myown myown.s mylib.o

echo "----------------------------------------"
uname -a
echo "------------ mylib.s -------------------"
cat mylib.s
echo "------------ myown.s --------------------"
cat myown.s
echo "----------------------------------------"
./myown
echo "----------------------------------------"
