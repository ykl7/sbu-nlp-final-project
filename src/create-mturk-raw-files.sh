#!/bin/bash

# Example usage: 
# input - input file path to sample number of lines from
# output - output file path to save this data into; please save into data/mturk-raw
# size - number of samples to extract from input file
# single mode can be used when inputs to HITs come from one file.

mode=$1

if [ $mode = 'single' ];
then
    input=$2
    output=$3
    size=$4
    shuf -n $size $input > $output
fi

if [ $mode = 'pair' ];
then
    input_file1=$2
    input_file2=$3
    output_file1=$4
    output_file2=$5
    upper_bound=$6
    head -n $upper_bound $input_file1 | tail -n 50 > $output_file1
    head -n $upper_bound $input_file2 | tail -n 50 > $output_file2
fi