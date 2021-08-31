#!/bin/bash

f=$1
br=$2
rev=$3
[[ $f == "" || $rev == "" || $br == "" ]] && echo "Supply file name, branch and revision number" && exit 1

rcs -i $f
ci -f0.0 -m -l $f #initial revision
rcs -b$br $f
ci -f$rev -l $f

