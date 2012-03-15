#!/bin/bash

for source in `ls *.pbm.html`
do
    if [ -f "$source" ]
    then
	echo "Converting $source...";
	ocroscript hocr-to-text "$source" > "$source".txt
    fi
done