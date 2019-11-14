#!/usr/bin/env bash

# to assign write permission to the file and add some new contents and also display the modified file contents

f='xyz.txt'
chmod u+w ${f}
echo "User Write permission given to ${f}"
echo

echo "This is some text." | tee ${f}
echo "Above sentence was inserted into ${f}"
echo

echo "Modified file contents:"
cat ${f}
