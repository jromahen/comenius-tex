#!/bin/bash

for source in `ls *.pbm`
do
    if [ -f "$source" ]
    then
	echo "Converting $source...";
	ocroscript recognize "$source" > "$source".html
    fi
done