#!/usr/bin/env bash
echo "Enter a directory name :"
read d

if [[ -d ${d} ]];
then
    echo "Directory exists at :"
    pwd
    echo "Contents of ${d} are :"
    ls ${d}
else
    mkdir ${d}

    echo "Enter sub-directory name : "
    read sd
    mkdir ${d}/${sd}

    echo "Enter a file name : "
    read f
    touch ${d}/${f}

    echo "New directory with sub-directory and an empty file created !"
fi
