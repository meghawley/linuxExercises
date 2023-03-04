#!/bin/bash

mkdir five

for value in {1..5}; do
    mkdir five/dir$value
done

for n in {1..5}; do
    for num in {1..4}; do
	for times in {1..num}; do
	    echo $num > five/dir$n/file$num
	done
    done
done;
