#!/bin/sh

# zip structure results for CLUMPAK and StructureHarvester
for species in Epinecrophylla_pyrrhonota_and_haematonota Epinecrophylla_pyrrhonota_1-5 Epinecrophylla_leucophthalma Epinecrophylla_gutturalis Epinecrophylla_ornata Epinecrophylla_pyrrhonota ; do 

	cd /Volumes/Backup_Plus/Epinecrophylla/1_analysis/Structure/structure_all_snps/${species}/

	for K in {1..5}; do	
		zip K${K}.zip *snps_K${K}_*
	done;
	
	#for CLUMPAK
	zip ${species}_byK.zip K*.zip
	# for StructureHarvester
	zip ${species}.zip *_f

done


# format output of CLUMPAK and StructureHarvester (after downloading results)
for species in Epinecrophylla_pyrrhonota_and_haematonota Epinecrophylla_pyrrhonota_1-4 Epinecrophylla_pyrrhonota_1-5 Epinecrophylla_gutturalis Epinecrophylla_leucophthalma Epinecrophylla_ornata Epinecrophylla_pyrrhonota ; do 

	for K in {1..5}; do	
		cp /Volumes/Backup_Plus/Epinecrophylla/1_analysis/Structure/structure_all_snps/${species}/CLUMPAK/K\=${K}/CLUMPP.files/ClumppIndFile.output /Volumes/Backup_Plus/Epinecrophylla/1_analysis/Structure/distruct_plots/${species}/ClumppIndFile.output.${K} 
	done;


	cd /Volumes/Backup_Plus/Epinecrophylla/1_analysis/Structure/distruct_plots/${species}/

	sed 's/.*://;s/ //' ClumppIndFile.output.1 > ClumppIndFile.output.1.meanQ

	for K in {2..5}; do	
		sed 's/.*://;s/ //;s/ //' ClumppIndFile.output.${K} > ClumppIndFile.output.${K}.meanQ
	done;


done


# Plot distruct plots
for species in Epinecrophylla_pyrrhonota Epinecrophylla_pyrrhonota_and_haematonota Epinecrophylla_pyrrhonota_1-4 Epinecrophylla_pyrrhonota_1-5 Epinecrophylla_leucophthalma Epinecrophylla_gutturalis Epinecrophylla_ornata ; do 
 
	cd /Volumes/Backup_Plus/Epinecrophylla/1_analysis/Structure/distruct_plots/${species}/

	for K in {1..10}; do	
		
		python /Users/mharvey/src/distruct2.3/distruct23/distruct2.3.py -K ${K} \
			--input=ClumppIndFile.output \
			--output=${species}_K${K}_by_individual.pdf \
			--title="${species} K=${K}" \
			--popfile=${species}_popfile_by_individual \
			--poporder=${species}_poporder_by_individual
				
	done;
done


