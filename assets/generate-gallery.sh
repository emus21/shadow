#!/bin/bash

rm gallery/*.jpg

COUNTER=1

for file in gallery/raw/*.jpg; do
    convert -thumbnail 200 "$file" "gallery/$COUNTER-thumb.jpg"
    convert -resize 25% "$file" "gallery/$COUNTER.jpg"
    
    let COUNTER=COUNTER+1
done
