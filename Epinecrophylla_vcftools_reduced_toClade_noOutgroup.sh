#!/bin/sh

source activate phyluce

cd /Volumes/Backup_Plus/Epinecrophylla/2_phasing/1_Epinecrophylla_seqcap_pop_no_outgroup_reduced_to_clade/8_GATK/

# remove indels, restrict to biallelic loci, min mean depth, min quality score
vcftools --vcf Epinecrophylla_SNPs_phased.vcf --remove-indels --min-alleles 2 --max-alleles 2 --minDP 5.5 --minQ 30 --recode --out Epinecrophylla_SNPs_phased_rmIndels_QC_DP

# allow 5% missing data
vcftools --vcf Epinecrophylla_SNPs_phased_rmIndels_QC_DP.recode.vcf --max-missing 0.95 --recode --out Epinecrophylla_SNPs_phased_rmIndels_95_QC_DP

# export mean depth per site
vcftools --vcf Epinecrophylla_SNPs_phased_rmIndels_95_QC_DP.recode.vcf --site-mean-depth --out Epinecrophylla_SNPs_phased_95

# format files to get one snp per locus
cat Epinecrophylla_SNPs_phased_95.ldepth.mean | awk '{print $1,$2}' > Epinecrophylla_SNPs_phased_95_ok.txt

egrep -o "\w+.\w+\s" Epinecrophylla_SNPs_phased_95_ok.txt | sort -u | parallel 'egrep "{}" Epinecrophylla_SNPs_phased_95_ok.txt | sort -r | head -1 >> Epinecrophylla_SNPs_phased_95_random_snps.temp'

# format files
sort -u Epinecrophylla_SNPs_phased_95_random_snps.temp > Epinecrophylla_SNPs_phased_95_random_snps.txt

# extract one snp per locus
vcftools --vcf Epinecrophylla_SNPs_phased_rmIndels_95_QC_DP.recode.vcf --positions Epinecrophylla_SNPs_phased_95_random_snps.txt --recode --out Epinecrophylla_toClade_SNPs_phased_rmIndels_95_QC_DP_random

cp Epinecrophylla_toClade_SNPs_phased_rmIndels_95_QC_DP_random.recode.vcf /Volumes/Backup_Plus/Epinecrophylla/1_analysis/SNAPP/

source deactivate

