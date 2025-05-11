#!/bin/bash
# Run PROKKA for genome annotation

# Activate the genomics conda environment
source activate genomics

# Define output directory and input file
out_dir=prokka_output
file=contigs.fasta

# Run PROKKA in background with nohup
nohup prokka "$file" --outdir "$out_dir" --cpus 24 --mincontiglen 200 &

