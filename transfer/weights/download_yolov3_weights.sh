#!/bin/bash

# make '/weights' directory if it does not exist and cd into it
#mkdir -p weights && cd weights

# copy darknet weight files, continue '-c' if partially downloaded
#wget -c https://pjreddie.com/media/files/yolov3-spp.weights

# yolov3 pytorch weights

# Set fileid and filename
filename="yolov3-spp.pt"
fileid="188pvdV_-PPNt34pPkBZDuMHueBOTA_Fc"  # yolov3-spp.pt

# Download from Google Drive, accepting presented query
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}
rm ./cookie


# darknet53 weights (first 75 layers only)
wget -c https://pjreddie.com/media/files/darknet53.conv.74

