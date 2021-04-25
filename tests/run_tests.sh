#!/bin/bash

set -o errexit 

CURRENTDIR=$(pwd)
echo Current dir is $CURRENTDIR
CHECKPROG=$(pwd)/../dpem
CONFFILE=$(pwd)/my.conf

VERSION=$($CHECKPROG --version)

for i in $(ls -d */); do
    echo Testing $i
    cd $i
    ./go.sh "$CHECKPROG" "$CONFFILE" > /tmp/output.txt
    diff expected-output.txt /tmp/output.txt
    rm -f /tmp/output.txt .jobcounter .jobfile
    cd ..
done
