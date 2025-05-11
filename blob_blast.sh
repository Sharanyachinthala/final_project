#!/bin/bash
# Run BLAST megablast for each input contig file

for contig in "$@"; do
    # Get file name without path
    outname=$(basename "$contig")

    # Run BLASTn (megablast) on the contig file in background
    nohup blastn \
    -task megablast \
    -query "$contig" \
    -db /home/share/databases/ncbi_nt/nt \
    -outfmt '6 qseqid staxids bitscore std sscinames sskingdoms stitle' \
    -culling_limit 5 \
    -num_threads 12 \
    -evalue 1e-5 \
    -out "$outname.vs.nt.cul5.1e5.megablast.out" &
done
