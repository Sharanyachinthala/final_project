#!/bin/bash
# Calculate sequencing read coverage for all R1 and R2 FASTQ files

for fastq in ./*_R1_*  ./*_R2_*
do
	# Print current file name
	echo file: $fastq

	# Count number of reads (lines starting with @ in compressed FASTQ)
	readcount=$(zgrep -c '^@' $fastq )
	echo readcount: $readcount

	# Calculate total base pairs (read count x 250 bp x 2 for paired-end)
	total_bp=$((readcount * 250 * 2))
	echo total_bp: $total_bp

	# Estimate coverage assuming 7 Mb genome size
	coverage=$((total_bp/7000000))
	echo coverage: $coverage
done
