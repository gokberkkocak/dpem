#!/bin/bash

set -o errexit 

CURRENTDIR=$(pwd)
echo Current dir is $CURRENTDIR
CHECKPROG=$(pwd)/../dpem
CONFFILE=$(pwd)/.conf.json

VERSION=$($CHECKPROG --version)

for i in $(ls -d */); do
    echo Accepting $i
    cd $i
    ./go.sh "$CHECKPROG" "$CONFFILE" > expected-output.txt
    rm -f .jobcounter .jobfile
    cd ..
done
