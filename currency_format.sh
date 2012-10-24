#!/bin/bash

if [ -z "$1" ]
then
  echo "usage: currency_format dataset/[\*]filename.csv (e.g. dataset/\*2012.csv)"
fi 
for infile in $1
do
    if [ -d "$infile" ] 
    then
		echo "$infile (dir)"
    else
		echo $infile	  
		sed -r -i 's/,"?\s?£?([0-9]+),?([0-9]+)?,?([0-9]+)?(\.[0-9]{2})\s?"?/,\1\2\3\4/g' "$infile"
    fi
done

