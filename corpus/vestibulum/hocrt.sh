#!/bin/bash

# First process PBM, then PPM, then JPG
for source in `ls *.pbm.html`
do
    if [ -f "$source" ]
    then
	echo "Converting $source...";
	ocroscript hocr-to-text "$source" > "$source".txt
    fi
done
for source in `ls *.ppm.html`
do
    if [ -f "$source" ]
    then
	echo "Converting $source...";
	ocroscript hocr-to-text "$source" > "$source".txt
    fi
done
for source in `ls *.jpg.html`
do
    if [ -f "$source" ]
    then
	echo "Converting $source...";
	ocroscript hocr-to-text "$source" > "$source".txt
    fi
done