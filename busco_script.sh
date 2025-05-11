#!/bin/bash
# Run BUSCO genome completeness analysis

# Activate conda environment for BUSCO
source activate busco-env

# Set input variables: genome assembly file and output folder
contigs=$1
output=$2

# Run BUSCO with 24 threads using bacteria dataset
busco -i "$contigs" -m genome -o "$output" -l bacteria_odb10 -c 24
