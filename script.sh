#!/usr/bin/env bash

files=0
dirs=0

# loop over lines returned from `ls -l`, value of each line is in `$line`
while IFS= read -r line || [[ -n $line ]]; do
	# if line starts with d, it is directory
    if [[ $line == d* ]];
    then
		((++dirs))
    elif [[ $line == -* ]]; # if starts with -, it is file
    then
    	((++files))
    fi
done < <(ls -l)

# print number of folders and directories
echo "Number of files       : $files"
echo "Number of directories : $dirs"
