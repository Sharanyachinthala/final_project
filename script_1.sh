#!/bin/bash

for fastq in ./*_R1_*  ./*_R2_*;
do
echo file: $fastq


readcount=$(zgrep -c '^@' $fastq )
echo readcount: $readcount
total_bp=$((readcount * 250 * 2))
echo total_bp: $total_bp
coverage=$((total_bp/7000000))
echo coverage: $coverage
  

done 
