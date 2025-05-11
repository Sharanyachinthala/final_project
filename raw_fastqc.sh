#!/bin/bash
# Step 1: Quality check of raw reads using FastQC

# Activate the genomics conda environment
source activate genomics

# Create output directory if it doesn't exist
mkdir -p fastqc_raw

# Run FastQC on all raw FASTQ files and save results to output folder
fastqc data/raw/*.fastq.gz -o fastqc_raw
