#!/bin/bash
# unzips all files in directory
for a in *.zip
    do unzip "$a" -d "$(echo "$a" | sed "s/\(.*\)\.zip/\1/")"
done
