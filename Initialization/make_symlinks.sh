#!/bin/bash
cd config/

FOLDERS=$(ls -d */ | sed 's/\/$//')

for folder in $FOLDERS
do
    ln -sf $MAINFOLDER/config/$folder ~/.config/$folder

done

cd $MAINFOLDER