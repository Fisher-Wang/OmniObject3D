#!/bin/bash

cd data/raw/blender_renders
files=$(ls *.tar.gz)
for file in $files; do
    name=$(basename $file .tar.gz)
    mkdir -p $name
    tar -xvf $file -C $name
    rm $file
done
