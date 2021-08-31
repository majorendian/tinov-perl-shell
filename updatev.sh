#!/bin/bash

files=`find ./ -regex ".*\.sh\|.*\.pl|tpsh"`

for f in $files; do
	ci -m"$1" -f -l $f
done
