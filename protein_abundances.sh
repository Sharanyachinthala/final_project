#!/bin/bash
# Count unique annotated protein products from PROKKA output

# Activate the genomics conda environment
source activate genomics

# Extract 'product=' fields from PROKKA GFF file, clean, count, and sort
grep -o "product=.*" prokka_output/PROKKA_*.gff | sed 's/product=//g' | sort | uniq -c | sort -nr > protein_abundance.txt
