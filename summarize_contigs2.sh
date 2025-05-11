#!/bin/bash

# List the files in the SPAdes output directory
echo "Listing files in spades_04_S62/"
ls spades_04_S62/

# View the FASTA file with less -S (scrollable, press 'q' to quit)
echo
echo "Previewing contigs.fasta (press 'q' to exit view):"
less -S spades_04_S62/contigs.fasta

# View the top 10 contig headers
echo
echo "Top 10 contig headers:"
grep '>' spades_04_S62/contigs.fasta | head

# Count the number of contigs
echo
echo "Number of contigs:"
grep -c '>' spades_04_S62/contigs.fasta
