#!/bin/bash
source activate quast-env

contigs=$1
output=$2

quast.py "$contigs" -o "$output"
