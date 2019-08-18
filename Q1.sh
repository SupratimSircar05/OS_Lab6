#!/usr/bin/env bash
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
