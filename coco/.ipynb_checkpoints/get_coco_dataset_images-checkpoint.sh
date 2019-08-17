#!/bin/bash
#run this from inside coco folder

mkdir images && cd images
wget -c https://pjreddie.com/media/files/train2014.zip
wget -c https://pjreddie.com/media/files/val2014.zip

# Unzip
unzip -q train2014.zip
unzip -q val2014.zip

# (optional) Delete zip files
rm -rf *.zip

cd ..

