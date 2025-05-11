# 811-gen final_project

## Title: Bacterial Genome Assembly  
**Group members**: Sharanya Chinthala, Nikhitha Vujjini

### Project Details:
- Goal: Assemble and annotate bacterial genomes from raw FASTQ data
- Input: 4 FASTQ files (2 forward and 2 reverse reads)
- Technology: Illumina HiSeq 2500, paired-end 250 bp sequencing reads

---

## Workflow Overview

### 1. Quality Control
###**Tool**: FastQC
###**Script**: `step1_fastqc.sh`
####Assessed raw read quality and identified adapter contamination.

### 2. Adapter and Quality Trimming
**Tool**: Trimmomatic
**Script**: `trim_scriptV2.sh`
Trimmed low-quality bases and removed adapter sequences.

### 3. Genome Assembly
**Tool**: SPAdes
**Scripts**: `run_spades1.sh`, `run_spades2.sh`
Assembled reads into contigs for both bacterial samples.

### 4. Genome Annotation
**Tool**: Prokka
**output**:`prokka_04S62`, `prokka_03S38`
Generated `.gff`, `.faa`, and `.ffn` files for coding sequences and RNAs.

### 5. Completeness Check
**Tool**: BUSCO
**script**: `busco_script.sh`
**Output**: `busco_summary_sample1.txt`, `busco_summary_sample2.txt`
Checked genome completeness using bacterial ortholog datasets.

### 6. Contig Summary
**Script**: `summarize_contigs.sh`,`summarize_contigs2.sh`
Summarized contig count and headers from assembled FASTA.

### 7. Species Identification
**Tools**: BLASTn (MEGABLAST), BlobTools
**Scripts**: `clean_spades.sh`,
**Outputs**:` blob_out.blobDB.json.bestsum.genus.p8.span.100.blobplot.bam0.png`,`blob_plot_genus_04S62.blob_out_04S62.blobDB.json.bestsum.genus.p8.span.100.blobplot.bam0.png`
Used BLASTn to compare assembled contigs to NCBI nt database for species-level identification.
BlobTools visualized taxonomic composition and confirmed primary species.

### 8. Visualization of Results
**output**:
---

