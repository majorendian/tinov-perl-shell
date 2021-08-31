#!/bin/bash

files=`find ./ -regex ".*\.sh\|.*\.pl\|.*/src/tpsh\|LICENSE\|README\.md"`

[[ $1 == "" ]] && echo "Must provide revision number" && exit 1

for f in $files; do
	co -r$1
done
