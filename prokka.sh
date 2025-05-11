#!/bin/bash

source activate genomics

out_dir=prokka_output
file=contigs.fasta

nohup prokka "$file" --outdir "$out_dir" --cpus 24 --mincontiglen 200 &
