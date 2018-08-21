#!/bin/bash
cd "`dirname "$0"`"

for i in *.tex
do
	echo compiling $i to PDF ...
	pdflatex $i
done
rm *.log *.aux
