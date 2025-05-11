#!/bin/bash

#Extract 16S rRNA sequences from all .ffn files

for file in ./*.ffn; do
	#Extract 16S sequences from each file
    	extract_sequences "16S ribosomal RNA" "$file" > 16S_sequence.fasta
done
