#!/bin/bash

# Usage: ./run_busco.sh <contigs.fasta> <output_folder>

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <contigs.fasta> <output_folder>"
    exit 1
fi

contigs=$1
output=$2

busco -i "$contigs" \
      -m genome \
      -o "$output" \
      -l bacteria_odb10 \
      -c 4 \
      -f

echo "BUSCO completed for $contigs. Results in $output/"
