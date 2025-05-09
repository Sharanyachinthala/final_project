#!/bin/bash

contigs=$1
output=$2

quast.py "$contigs" -o "$output"
