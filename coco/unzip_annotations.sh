#!/bin/bash

# Set filename
cd annotations

zip -F instances_train2014_parts.zip --out instances_train2014.zip

filename1="instances_train2014.zip"

filename2="instances_val2014.zip"
# Unzip
unzip -q ${filename1}  # for instances_train2014.zip
unzip -q ${filename2}  # for instances_val2014.zip

cd .. #go back to coco