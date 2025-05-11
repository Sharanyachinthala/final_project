#!/bin/bash
# Run QUAST to assess genome assembly quality

# Activate the quast conda environment
source activate quast-env

# Set input variables: contig file and output directory
contigs=$1
output=$2

# Run QUAST with specified input and output
quast.py "$contigs" -o "$output"
