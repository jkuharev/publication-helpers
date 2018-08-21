#!/bin/bash
cd "`dirname "$0"`"

for i in *.tex
do
	pdf=`echo $i | sed 's/\.tex$/.pdf/g'`
	png=`echo $i | sed 's/\.tex$/.png/g'`
	echo compiling $i to PDF ...
	pdflatex $i
	echo compiling $pdf to PNG ...
	pdf2png --dpi 300 --output $png $pdf
done
rm *.log *.aux
