#!/bin/bash

function resize(){
    if [ $(du "$1" | grep -oP ^[0-9]*) -gt 500 ]
    then convert "$1" -quality 85% -resize 800x "$1"
    else echo $1 is already compressed
fi
}

for x in $(find images/ -type f -name *.jpg)
do resize "$x";
done
