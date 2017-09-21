#!/bin/bash
if [ ! $1 ]; then
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
else
	inkscape -d 90 -e ./png/"$1"_90dpi.png ./scalable/"$1".svg
	inkscape -d 180 -e ./png/"$1"_180dpi.png ./scalable/"$1".svg
fi
