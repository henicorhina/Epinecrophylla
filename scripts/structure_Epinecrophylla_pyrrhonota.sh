#!/bin/sh

for species in Epinecrophylla_pyrrhonota Epinecrophylla_haematonota ; do
	cd /Volumes/Backup_Plus/Epinecrophylla/1_analysis/Structure/structure_all_snps/${species}/
	echo $species;
        for K in {1..10}; do
        		echo "K = "$K;
                for rep in {1..10}; do
                		echo "rep = "$rep;
                        /Users/mharvey/src/console/structure \
                        -m mainparams \
                        -e extraparams \
                        -K $K \
                        -i /Volumes/Backup_Plus/Epinecrophylla/1_analysis/Structure/${species}_SNPs_phased_rmIndels_75_QC_DP_seqcap_pop_structure.str \
                        -o ${species}_structure_all_snps_K${K}_replicate${rep} > ${species}_K${K}_replicate${rep}_log.txt ;

				done; 	
		done;
done
