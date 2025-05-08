#!/bin/bash
contigs=$1
output=$2

busco -i "$contigs" -m genome -o "$output" -l bacteria_odb10 -c 24
