#!/usr/bin/env bash

# read a filename from user to check if it exists or not.
# if exists, display its contents
# if does not exist, create a file and also display its contents

echo "Enter a filename :"
read f

if [[ -f ${f} ]];
then
    echo "Contents of file are : "
    cat ${f}
else
    touch ${f}                              # cat > ${f}
    echo "File created with name ${f} in "
    pwd
    echo "Contents of this newly created file : "
    cat ${f}
fi
