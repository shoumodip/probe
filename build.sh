#!/bin/sh

set -xe

cc -S -o mylib.s mylib.c
cc -c -o mylib.o mylib.s

cc -S -o main.s main.c
cc -o main main.s mylib.o

echo "----------------------------------------"
uname -a
echo "------------ mylib.s -------------------"
cat mylib.s
echo "------------ main.s --------------------"
cat main.s
echo "----------------------------------------"
./main
echo "----------------------------------------"
