#!/bin/bash

FILENAME=$1
TEMP_FOLDER="correactive"
IMAGE_NAME="correactive"

if [ -f $FILENAME ]; then
    mkdir $TEMP_FOLDER
    unzip -nq $FILENAME -d $TEMP_FOLDER
    cp correactive-run.sh $TEMP_FOLDER/bin/run.sh
    docker build -t $IMAGE_NAME .
else
    echo "File not found."
fi