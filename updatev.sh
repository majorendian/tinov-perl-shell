#!/bin/bash

files=`find ./ -regex ".*\.sh\|.*\.pl\|.*/src/tpsh\|\./LICENSE\|\./README\.md"`

for f in $files; do
	ci -m"$1" -f -l $f
done
