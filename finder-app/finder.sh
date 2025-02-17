#!/bin/bash

if [[ -z "$1" || -z "$2" ]]; then
  exit 1
fi

filesdir=$1
searchstr=$2

if [[ ! -d $filesdir ]]; then 
  exit 1
fi

echo "filesdir: $filesdir"
echo "searchstr: $searchstr"

num_files=$(grep -l "$searchstr" "$filesdir"/* | wc -l)
num_lines=$(grep "$searchstr" "$filesdir"/* | wc -l)

echo "The number of files are $num_files and the number of matching lines are $num_lines"
