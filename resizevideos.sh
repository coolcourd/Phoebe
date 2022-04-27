#!/bin/bash

function resize(){
    ffmpeg -i "$1" -vcodec libx265 -crf 28 "videos/$(basename $1)"
    rm -f $1
}

for x in $(find raw -type f -name 20*.mp4)
do resize "$x";
done
