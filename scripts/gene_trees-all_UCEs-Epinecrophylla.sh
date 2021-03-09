#!/bin/sh

source activate phyluce

cd /Volumes/Backup_Plus/Epinecrophylla/2_phasing/Epinecrophylla-phased-mafft-phylip-edge-trimmed-clean-75percent/

for file in *.phylip-relaxed;
do
		raxmlHPC-PTHREADS-SSE3 \
		    -m GTRGAMMA \
		    -p 19877 \
		    -n ${file}_best.tre \
		    -s ${file} \
		    -T 8

done;

mv *.tre /Volumes/Backup_Plus/Epinecrophylla/1_analysis/UCE_gene_trees/trees/ ;
mv *.reduced /Volumes/Backup_Plus/Epinecrophylla/1_analysis/UCE_gene_trees/alignments_reduced/ ;


source deactivate
