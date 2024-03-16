#!/bin/bash

if [ $# -eq 0 ]
  then
    echo
    echo "Use:"
    echo "    $0 input.pdf output.pdf"
    echo
    exit 1
fi

timestamp=$(date +%s)
inputfilename=$1
outputfinalname=$2

if [ -z "$2" ]
  then
  	outputfullfilename=$1
  	filename=$(basename -- "$outputfullfilename")
  	extension="${filename##*.}"
  	filename="${filename%.*}"
  	outputfinalname="$filename-compressed-$timestamp.pdf"
  	echo
    echo "No output filename supplied, using $outputfinalname"
    echo
fi

export gscli=`which gs`

$gscli \
  -sDEVICE=pdfwrite \
  -dNOPAUSE -dQUIET -dBATCH \
  -dPDFSETTINGS=/screen \
  -dAutoRotatePages=/None \
  -dCompatibilityLevel=1.7 \
  -dColorImageResolution=100 \
  -sOutputFile=$outputfinalname $inputfilename

optsize=$(stat -c "%s" "${outputfinalname}")
orgsize=$(stat -c "%s" "${inputfilename}")
bytesSaved=$(expr $orgsize - $optsize)
kbSaved=$(expr $bytesSaved / 1024)
percent=$(expr $optsize '*' 100 / $orgsize)
echo "Saving $bytesSaved bytes ($kbSaved KB) (optimized file is ${percent}% of original file)"

echo
echo "Done!"
echo
