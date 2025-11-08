#!/bin/bash

cp .test/1_.txt p3/
cp .test/2_.txt p3/
gcc p3/p3.c
printf "p3/1_.txt\np3/2_.txt\np3/merged.txt\n" | ./a.out

if [ -z "$(diff -uiwB .test/merged.txt p3/merged.txt)" ]; then
    echo "Files are the same"
else
    echo "Files differ:"
    diff -uiwB .test/merged.txt p3/merged.txt
fi
