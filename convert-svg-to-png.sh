#!/bin/sh
svgDirectory="output/batch-one"
pngDirectory="output/png-batch-one"
for file in ${svgDirectory}/* ; do
    fileName=${file##*/}
    echo $fileName
    cairosvg ${svgDirectory}/${fileName} -f png -o ${pngDirectory}/${fileName}.png --width 512 --height 512 --output-width 512 --output-height 512
done
