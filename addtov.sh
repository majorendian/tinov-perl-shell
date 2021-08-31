#!/bin/bash

f=$1
br=$2
rev=$3
[[ $f == "" || $rev == "" || $br == "" ]] && echo "Supply file name, branch and revision number" && exit 1

rcs -i $f
rcs -b$br $f
ci -f$rev -l $f

