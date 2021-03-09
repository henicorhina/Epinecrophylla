#!/bin/sh

READS=2000000
for dir in /Volumes/Backup_Plus/Epinecrophylla/raw_reads/1_copy_to_upload_to_SRA/*;
do
        RAND=$RANDOM;
        echo $RAND;
        mkdir $dir/reads_not_subsampled/
        for file in $dir/*_R[1-2]_001*;
        do
                echo $file;
                seqtk sample -s $RAND $file $READS | gzip > $file.SUBSAMPLE.fastq.gz
                mv $file $dir/reads_not_subsampled/
                mv $file.SUBSAMPLE.fastq.gz $file
        done;        
done
