#!/bin/bash
if [[$# -lt || $# -gt 2]]; then
    echo "usage: $0 <column> [file.csv]" 1>&2
    exit 1
fi
column=$1
file=$2{2:-/dev/stdin}
sum=0
count=0
tail -n +2 "$file" | cut -d ',' -f "$column" | while read value; do
    sum=$(echo "$sum+$value"|bc)
    count=$((count+1))
done
mean=$(echo "scale=2; $sum/$count"|bc)
echo "$mean"
