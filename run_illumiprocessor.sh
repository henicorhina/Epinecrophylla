#!/bin/sh

cd directory/

illumiprocessor \
    --input 1_raw-reads_single-indexed \
    --output 2_clean_reads_single-indexed \
    --config suboscine_single_illumiprocessor_OJ.conf \
    --cores 12 \
    --r1-pattern "{}_(R1|READ1|Read1|read1).fastq(?:.gz)*" \
    --r2-pattern "{}_(R2|READ2|Read2|read2).fastq(?:.gz)*"
    
: '
# alternate r1/r2 patterns:
--r1_pattern: {}_L001_R1_001.fastq.gz
--r2_pattern: {}_L001_R1_001.fastq.gz

--r1_pattern: {}_(L001_R1_001|R1|READ1|Read1|read1).fastq(?:.gz)*
'

