#!/bin/sh

cd /Volumes/Backup_Plus/Epinecrophylla/2_phasing/1_Epinecrophylla_seqcap_pop_no_outgroup_reduced_to_clade/


mkdir 5_mapping 6_picard 7_merge-bams 8_GATK 9_SNP-tables 10_sequences 11_fasta-parts 12_raw-alignments 13_processed-phylip 14_formatted_output
mkdir 5_mapping/bam 5_mapping/sam 6_picard/bam_cleaned 6_picard/mark_pcr_duplicates 6_picard/mark_pcr_metrics 6_picard/read_groups
mkdir 14_formatted_output/adegenet 14_formatted_output/faststructure 14_formatted_output/genepop 14_formatted_output/gphocs 14_formatted_output/structure


# in this document you will need to replace the following:
# sample names in steps 4-8, step 9, and steps 21-23
# reference individual
# all instances of "Epinecrophylla" with the name of your taxon
# paths to GATK, picard, and seqcap_pop scripts
# the maximum java ram permitted on your system (e.g. 'java -Xmx16g')

# bwa index

bwa index -a is /Volumes/Backup_Plus/Epinecrophylla/2_phasing/1_Epinecrophylla_seqcap_pop/0_reference_fastas/Epinecrophylla_leucophthalma_leucophthalma_e51_LSUMZ42670.fasta

# steps 4-8 (not necessary)


# step 9: merge bams

java -Xmx2g -jar ~/anaconda/jar/MergeSamFiles.jar \
SO=coordinate \
AS=true \
I=/Volumes/Backup_Plus/Epinecrophylla/2_phasing/1_Epinecrophylla_seqcap_pop_with_outgroup/6_picard/mark_pcr_duplicates/Epinecrophylla_amazonica_e3_MZUSP164-aln_MD.bam \
I=/Volumes/Backup_Plus/Epinecrophylla/2_phasing/1_Epinecrophylla_seqcap_pop_with_outgroup/6_picard/mark_pcr_duplicates/Epinecrophylla_dentei_e6_MZUSP80591-aln_MD.bam \
I=/Volumes/Backup_Plus/Epinecrophylla/2_phasing/1_Epinecrophylla_seqcap_pop_with_outgroup/6_picard/mark_pcr_duplicates/Epinecrophylla_spodionota_spodionota_e85_H234-aln_MD.bam \
I=/Volumes/Backup_Plus/Epinecrophylla/2_phasing/1_Epinecrophylla_seqcap_pop_with_outgroup/6_picard/mark_pcr_duplicates/Epinecrophylla_spodionota_sororia_e81_KU113634-aln_MD.bam \
I=/Volumes/Backup_Plus/Epinecrophylla/2_phasing/1_Epinecrophylla_seqcap_pop_with_outgroup/6_picard/mark_pcr_duplicates/Epinecrophylla_erythrura_septentrionalis_e10_LSUMZ27716-aln_MD.bam \
I=/Volumes/Backup_Plus/Epinecrophylla/2_phasing/1_Epinecrophylla_seqcap_pop_with_outgroup/6_picard/mark_pcr_duplicates/Epinecrophylla_fulviventris_costaricensis_e17_LSU2299-aln_MD.bam \
I=/Volumes/Backup_Plus/Epinecrophylla/2_phasing/1_Epinecrophylla_seqcap_pop_with_outgroup/6_picard/mark_pcr_duplicates/Epinecrophylla_gutturalis_e26_USNM587338-aln_MD.bam \
I=/Volumes/Backup_Plus/Epinecrophylla/2_phasing/1_Epinecrophylla_seqcap_pop_with_outgroup/6_picard/mark_pcr_duplicates/Epinecrophylla_fjeldsaai_e13_KU873-aln_MD.bam \
I=/Volumes/Backup_Plus/Epinecrophylla/2_phasing/1_Epinecrophylla_seqcap_pop_with_outgroup/6_picard/mark_pcr_duplicates/Epinecrophylla_haematonota_haematonota_e39_LSUMZ10790-aln_MD.bam \
I=/Volumes/Backup_Plus/Epinecrophylla/2_phasing/1_Epinecrophylla_seqcap_pop_with_outgroup/6_picard/mark_pcr_duplicates/Epinecrophylla_haematonota_haematonota_e40_LSUMZ27427-aln_MD.bam \
I=/Volumes/Backup_Plus/Epinecrophylla/2_phasing/1_Epinecrophylla_seqcap_pop_with_outgroup/6_picard/mark_pcr_duplicates/Epinecrophylla_leucophthalma_e49_LSU18242-aln_MD.bam \
I=/Volumes/Backup_Plus/Epinecrophylla/2_phasing/1_Epinecrophylla_seqcap_pop_with_outgroup/6_picard/mark_pcr_duplicates/Epinecrophylla_leucophthalma_phaeonota_e59_LSUMZ85998-aln_MD.bam \
I=/Volumes/Backup_Plus/Epinecrophylla/2_phasing/1_Epinecrophylla_seqcap_pop_with_outgroup/6_picard/mark_pcr_duplicates/Epinecrophylla_leucophthalma_sordida_e62_FMNH457026-aln_MD.bam \
I=/Volumes/Backup_Plus/Epinecrophylla/2_phasing/1_Epinecrophylla_seqcap_pop_with_outgroup/6_picard/mark_pcr_duplicates/Epinecrophylla_leucophthalma_leucophthalma_e51_LSUMZ42670-aln_MD.bam \
I=/Volumes/Backup_Plus/Epinecrophylla/2_phasing/1_Epinecrophylla_seqcap_pop_with_outgroup/6_picard/mark_pcr_duplicates/Epinecrophylla_ornata_atrogularis_e64_LSU74213-aln_MD.bam \
I=/Volumes/Backup_Plus/Epinecrophylla/2_phasing/1_Epinecrophylla_seqcap_pop_with_outgroup/6_picard/mark_pcr_duplicates/Epinecrophylla_ornata_meridionalis_e69_LSUMZ1082-aln_MD.bam \
I=/Volumes/Backup_Plus/Epinecrophylla/2_phasing/1_Epinecrophylla_seqcap_pop_with_outgroup/6_picard/mark_pcr_duplicates/Epinecrophylla_ornata_hoffmannsi_e67_FMNH457051-aln_MD.bam \
I=/Volumes/Backup_Plus/Epinecrophylla/2_phasing/1_Epinecrophylla_seqcap_pop_with_outgroup/6_picard/mark_pcr_duplicates/Epinecrophylla_pyrrhonota_e75_FMNH457014-aln_MD.bam \
O=7_merge-bams/Epinecrophylla.bam 
 

# step 10.	Index the merged .bam file (samtools)

samtools index 7_merge-bams/Epinecrophylla.bam 

# steps 11 and 12: create and index dictionary

java -Xmx16g -jar ~/anaconda/pkgs/picard-1.106-0/jar/CreateSequenceDictionary.jar \
R=/Volumes/Backup_Plus/Epinecrophylla/2_phasing/1_Epinecrophylla_seqcap_pop/0_reference_fastas/Epinecrophylla_leucophthalma_leucophthalma_e51_LSUMZ42670.fasta \
O=/Volumes/Backup_Plus/Epinecrophylla/2_phasing/1_Epinecrophylla_seqcap_pop/0_reference_fastas/Epinecrophylla_leucophthalma_leucophthalma_e51_LSUMZ42670.dict

samtools faidx /Volumes/Backup_Plus/Epinecrophylla/2_phasing/1_Epinecrophylla_seqcap_pop/0_reference_fastas/Epinecrophylla_leucophthalma_leucophthalma_e51_LSUMZ42670.fasta


# step 13.	Call indels (GATK)

java -Xmx2g -jar ~/anaconda/GenomeAnalysisTK-3.3-0/GenomeAnalysisTK.jar \
-T RealignerTargetCreator \
-R /Volumes/Backup_Plus/Epinecrophylla/2_phasing/1_Epinecrophylla_seqcap_pop/0_reference_fastas/Epinecrophylla_leucophthalma_leucophthalma_e51_LSUMZ42670.fasta \
-I 7_merge-bams/Epinecrophylla.bam   \
--minReadsAtLocus 7 \
-o 8_GATK/Epinecrophylla.intervals

# step 14.	Realign indels (GATK)

java -Xmx2g -jar ~/anaconda/GenomeAnalysisTK-3.3-0/GenomeAnalysisTK.jar \
-T IndelRealigner \
-R /Volumes/Backup_Plus/Epinecrophylla/2_phasing/1_Epinecrophylla_seqcap_pop/0_reference_fastas/Epinecrophylla_leucophthalma_leucophthalma_e51_LSUMZ42670.fasta \
-I 7_merge-bams/Epinecrophylla.bam  \
-targetIntervals 8_GATK/Epinecrophylla.intervals \
-LOD 3.0 \
-o 8_GATK/Epinecrophylla_RI.bam



# step 15: call SNPs

java -Xmx2g -jar ~/anaconda/GenomeAnalysisTK-3.3-0/GenomeAnalysisTK.jar \
-T UnifiedGenotyper \
-R /Volumes/Backup_Plus/Epinecrophylla/2_phasing/1_Epinecrophylla_seqcap_pop/0_reference_fastas/Epinecrophylla_leucophthalma_leucophthalma_e51_LSUMZ42670.fasta \
-I 8_GATK/Epinecrophylla_RI.bam \
-gt_mode DISCOVERY \
-o 8_GATK/Epinecrophylla_raw_SNPs.vcf \
-ploidy 2 \
-rf BadCigar

# step 16: annotate SNPs


java -Xmx2g -jar ~/anaconda/GenomeAnalysisTK-3.3-0/GenomeAnalysisTK.jar \
-T VariantAnnotator \
-R /Volumes/Backup_Plus/Epinecrophylla/2_phasing/1_Epinecrophylla_seqcap_pop/0_reference_fastas/Epinecrophylla_leucophthalma_leucophthalma_e51_LSUMZ42670.fasta \
-I 8_GATK/Epinecrophylla_RI.bam \
-G StandardAnnotation \
-V:variant,VCF 8_GATK/Epinecrophylla_raw_SNPs.vcf \
-XA SnpEff \
-o 8_GATK/Epinecrophylla_SNPs_annotated.vcf \
-rf BadCigar      



# step 17: annotate indels



java -Xmx2g -jar ~/anaconda/GenomeAnalysisTK-3.3-0/GenomeAnalysisTK.jar \
-T UnifiedGenotyper \
-R /Volumes/Backup_Plus/Epinecrophylla/2_phasing/1_Epinecrophylla_seqcap_pop/0_reference_fastas/Epinecrophylla_leucophthalma_leucophthalma_e51_LSUMZ42670.fasta \
-I 8_GATK/Epinecrophylla_RI.bam \
-gt_mode DISCOVERY \
-glm INDEL \
-o 8_GATK/Epinecrophylla_SNPs_indels.vcf \
-rf BadCigar         


# step 18: mask indels


java -Xmx2g -jar ~/anaconda/GenomeAnalysisTK-3.3-0/GenomeAnalysisTK.jar \
-T VariantFiltration \
-R /Volumes/Backup_Plus/Epinecrophylla/2_phasing/1_Epinecrophylla_seqcap_pop/0_reference_fastas/Epinecrophylla_leucophthalma_leucophthalma_e51_LSUMZ42670.fasta \
-V 8_GATK/Epinecrophylla_raw_SNPs.vcf \
--mask 8_GATK/Epinecrophylla_SNPs_indels.vcf \
--maskExtension 5 \
--maskName InDel \
--clusterWindowSize 10 \
--filterExpression "MQ0 >= 4 && ((MQ0 / (1.0 * DP)) > 0.1)" \
--filterName "BadValidation" \
--filterExpression "QUAL < 30.0" \
--filterName "LowQual" \
--filterExpression "QD < 5.0" \
--filterName "LowVQCBD" \
-o 8_GATK/Epinecrophylla_SNPs_no_indels.vcf  \
-rf BadCigar

# step 19: Restrict to high-quality SNPs (bash)


cat 8_GATK/Epinecrophylla_SNPs_no_indels.vcf | grep 'PASS\|^#' > 8_GATK/Epinecrophylla_SNPs_pass-only.vcf 


# step 20: Read-backed phasing (GATK)


java -Xmx2g -jar ~/anaconda/GenomeAnalysisTK-3.3-0/GenomeAnalysisTK.jar \
-T ReadBackedPhasing \
-R /Volumes/Backup_Plus/Epinecrophylla/2_phasing/1_Epinecrophylla_seqcap_pop/0_reference_fastas/Epinecrophylla_leucophthalma_leucophthalma_e51_LSUMZ42670.fasta \
-I 8_GATK/Epinecrophylla_RI.bam \
--variant 8_GATK/Epinecrophylla_SNPs_pass-only.vcf \
-L 8_GATK/Epinecrophylla_SNPs_pass-only.vcf \
-o 8_GATK/Epinecrophylla_SNPs_phased.vcf \
--phaseQualityThresh 20.0 \
-rf BadCigar

