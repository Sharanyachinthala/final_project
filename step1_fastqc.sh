#!/bin/bash
# Step 1: Quality check using FastQC

mkdir -p fastqc_raw

fastqc data/raw/*.fastq.gz -o fastqc_raw
