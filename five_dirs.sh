#!/bin/bash

mkdir five

for n in {1..5}; do
	 mkdir five/dir$n
      done

for dir in {1..5}; do
    for n in {1..4}; do
	for x in $(seq 1 $n); do
	    echo $n >> five/dir$dir/file$n
	done
    done
done
