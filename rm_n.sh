#!/bin/bash
if [[$# -ne 2]]; then
    echo "usage: $0 <dir><n>"1>&2
    exit 1
fi
if [[!-d "$1"]]; then
    echo "error: $1 is not a directory" 1>&2
    exit 1
fi
find "$1" -type f -size+"$2"c -delete
