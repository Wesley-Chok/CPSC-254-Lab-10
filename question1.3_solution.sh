#!/bin/bash

error () {
   echo "ERROR: $1"
   exit 1
}

get_md5sum() {
    cat $1 | md5sum | head -c 32
}

filename=$1
filehash=$2

if [ -z "$filename" ]; then
    error "Filename missing, please input it!"
fi

if [ -z "$filehash" ]; then
    error "md5sum missing, please input it!"
fi

if [ ! -f $filename ];
then
    error "Unable to find $filename, please check for spelling"
elif [ "$(get_md5sum $filename)" = "$filehash" ]; then
    echo "Found $filename successfully!"
else
    error "Unable to find $filename, please check md5sum"
fi