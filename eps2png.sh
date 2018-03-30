#!/bin/bash

## Requires ImageMagick

directories=('figures' 'plots')
echo directories: ${directories[@]}

for directory in ${directories[@]}
do
	echo "Entering "$directory"/"
	
	images=$(ls $directory/*.eps)
	
	for image in $images
	do
		filename=$(basename "$image")
		extension="${filename##*.}"
		filename="${filename%.*}"
		
		echo "Convert "$directory"/"$filename
		
		convert -density 300 $directory/$filename.eps $directory/$filename.png
	done
done

## there is a bug with plots/gnumembrane.eps (two pages, one dirty)
rm plots/gnumembrane-1.png
mv plots/gnumembrane-0.png plots/gnumembrane.png
