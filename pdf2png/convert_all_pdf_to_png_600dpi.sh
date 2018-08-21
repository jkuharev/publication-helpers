#!/bin/bash
cd "`dirname "$0"`"
mkdir png
echo converting PDF to PNG files ...
for i in *.pdf 
do
	echo -n " $i ... "
	png=`echo $i | sed 's/\.pdf$/.png/g'`
	pdf2png --dpi 600 --output png/$png $i
	echo "done!"
done