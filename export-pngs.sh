#!/bin/bash

for SVG in $(find ./scalable -type f);
do
    FILENAME=${SVG##*/}
    FILENAME=${FILENAME%.svg}.png
    inkscape -e ./png/$FILENAME $SVG
done
