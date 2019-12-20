#!/bin/sh
svgDirectory=output/batch-one
pngDirectory=output/png-batch-one
for file in ${svgDirectory} ; do
    fileName=${file##*/}
    echo $fileName
    cairosvg ${fileName} -o ${pngDirectory}/${fileName}.png
done
