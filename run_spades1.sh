#!/bin/bash

# Activate SPAdes environment
source ~/.bashrc
conda activate spades-env

# Input files for sample 03_S58
R1="trimmed-reads/03_S58_L001_R1_001.fastq.gz"
R2="trimmed-reads/03_S58_L001_R2_001.fastq.gz"
UNPAIRED1="trimmed-reads/unpaired-03_S58_L001_R1_001.fastq.gz"
UNPAIRED2="trimmed-reads/unpaired-03_S58_L001_R2_001.fastq.gz"

# Output directory
OUTDIR="spades_03_S58"

# Run SPAdes with isolate mode
nohup spades.py --isolate -1 $R1 -2 $R2 -s $UNPAIRED1 -s $UNPAIRED2 -o $OUTDIR -t 8 &

