#!/usr/bin/env bash
f='xyz.txt'
chmod u+w ${f}
echo "User Write permission given to ${f}"
echo

echo "This is some text." | tee ${f}
echo "Above sentence was appended to ${f}"
echo

echo "Modified file contents:"
cat ${f}
