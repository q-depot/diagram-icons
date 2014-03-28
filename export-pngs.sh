#!/bin/bash

for SVG in $(find ./scalable -type f);
do
    FILENAME=${SVG##*/}
    FILENAME=${FILENAME%.svg}_90dpi.png
    inkscape -d 90 -e ./png/$FILENAME $SVG
done

for SVG in $(find ./scalable -type f);
do
    FILENAME=${SVG##*/}
    FILENAME=${FILENAME%.svg}_180dpi.png
    inkscape -d 180 -e ./png/$FILENAME $SVG
done

