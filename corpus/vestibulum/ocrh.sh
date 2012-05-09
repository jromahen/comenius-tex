#!/bin/bash

# First process PBMs, then PPMs, then JPGs
for source in `ls *.pbm`
do
    if [ -f "$source" ]
    then
	echo "Converting $source...";
	ocroscript recognize "$source" > "$source".html
    fi
done
for source in `ls *.ppm`
do
    if [ -f "$source" ]
    then
	echo "Converting $source...";
	ocroscript recognize "$source" > "$source".html
    fi
done
for source in `ls *.jpg`
do
    if [ -f "$source" ]
    then
	echo "Converting $source...";
	ocroscript recognize "$source" > "$source".html
    fi
done