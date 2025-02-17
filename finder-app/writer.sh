#!/bin/bash

if [[ -z "$1" || -z "$2" ]]; then
  exit 1
fi

path=$1
str=$2

touch "$path"

if [[ $? -ne 0 ]]; then
  echo "Could not create file $path"
  exit 1
fi


echo "$str" > "$path"

