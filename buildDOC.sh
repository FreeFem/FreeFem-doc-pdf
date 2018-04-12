#!/bin/sh
#  change by F. Hecht (april 2018) 
## convert .eps to .png
#echo "Convert eps files to png"
#chmod +x ./eps2png.sh
#./eps2png.sh

## build doc
echo "Build the documentation"
#pdflatex freefem++doc.tex
#pdflatex freefem++doc.tex
rm freefem++doc.pdf
make freefem++doc.pdf
## remove tmp files
echo "Remove temporary files"
rm *.aux
rm *.idx
rm *.log
rm *.out
rm *.pdfsync
rm *.toc
