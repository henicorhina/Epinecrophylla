#!/bin/sh

READS=2000000
for dir in /Users/mharvey/Desktop/Tyler/2_clean_reads/*;
do
        RAND=$RANDOM;
        echo $RAND;
        mkdir $dir/reads_not_subsampled/
        for file in $dir/split-adapter-quality-trimmed/*-READ[1-2]*;
        do
                echo $file;
                seqtk sample -s $RAND $file $READS | gzip > $file.SUBSAMPLE.fastq.gz
                mv $file $dir/reads_not_subsampled/
                mv $file.SUBSAMPLE.fastq.gz $file
        done;        
done
