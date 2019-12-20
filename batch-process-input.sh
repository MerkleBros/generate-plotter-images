#!/bin/sh
for file in images/* ; do
    fileName=${file##*/}
    echo $fileName
    python linedraw.py -i images/${fileName} -o output/batch-four-contour-simplify-three/${fileName}.svg --contour_simplify 3
done
