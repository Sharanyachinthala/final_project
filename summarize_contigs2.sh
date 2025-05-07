#!/bin/bash

echo "Listing files in spades_04_S62/"
ls spades_04_S62/

echo
echo "Previewing contigs.fasta (press 'q' to exit view):"
less -S spades_04_S62/contigs.fasta

echo
echo "Top 10 contig headers:"
grep '>' spades_04_S62/contigs.fasta | head

echo
echo "Number of contigs:"
grep -c '>' spades_04_S62/contigs.fasta
