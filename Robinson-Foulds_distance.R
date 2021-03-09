library('ape')
library('phangorn')
library("phytools", lib.loc="/Library/Frameworks/R.framework/Versions/3.4/Resources/library")

setwd("/Volumes/Backup_Plus/Epinecrophylla/0_Epinecrophylla_ms/1_Epinecrophylla_submission/Data_to_add_to_a_repository")

#read trees
UCE_tre <- read.nexus(file="/Volumes/Backup_Plus/Epinecrophylla/1_analysis/Epinecrophylla-exabayes-75/ExaBayes_ConsensusExtendedMajorityRuleNexus.run1-MRE-consensus-tree.tre")
mtDNA_tre <- read.tree(file="/Volumes/Backup_Plus/Epinecrophylla/1_analysis/raxml_mtDNA/raxml_mtDNA_tree/RAxML_bipartitions.final_renamed_tips.tre")

UCE_tre <- keep.tip(UCE_tre, mtDNA_tre$tip.label)

treedist(UCE_tre, mtDNA_tre)
sprdist(UCE_tre, mtDNA_tre)
wRF.dist(UCE_tre, mtDNA_tre, normalize = TRUE)

# pruning both trees to one tip per taxon
tips <- c("Epinecrophylla_fjeldsaai_hybrid_e15_LSUMZ42704_1", "Epinecrophylla_dentei_e6_MZUSP80591_1", "Epinecrophylla_amazonica_e2_LSUMZ31342_1", "Epinecrophylla_spodionota_spodionota_e85_H234_1", "Epinecrophylla_spodionota_sororia_e82_LSUMZ2058_1", "Epinecrophylla_gutturalis_e35_LSU20398_1", "Epinecrophylla_ornata_hoffmannsi_e66_FMNH391379_1", "Epinecrophylla_ornata_meridionalis_e69_LSUMZ1082_1", "Epinecrophylla_ornata_atrogularis_e65_MSB36505_1", "Epinecrophylla_fulviventris_costaricensis_e18_LSUMZ82086_1", "Myrmorchilus_strigilatus_LSUMZ18722_1", "Epinecrophylla_leucophthalma_dissita_e43_LSUMZ75006_1", "Epinecrophylla_leucophthalma_sordida_e61_FMNH392048_1", "Epinecrophylla_leucophthalma_leucophthalma_e50_LSUMZ36628_1", "Epinecrophylla_leucophthalma_phaeonota_e59_LSUMZ85998_1", "Epinecrophylla_pyrrhonota_e75_FMNH457014_1", "Epinecrophylla_haematonota_haematonota_e40_LSUMZ27427_1", "Epinecrophylla_erythrura_septentrionalis_e10_LSUMZ27716_1")

UCE_tre.pruned <- keep.tip(UCE_tre, tips)
mtDNA_tre.pruned <- keep.tip(mtDNA_tre, tips)

treedist(UCE_tre.pruned, mtDNA_tre.pruned)
sprdist(UCE_tre.pruned, mtDNA_tre.pruned)
wRF.dist(UCE_tre.pruned, mtDNA_tre.pruned, normalize = TRUE)
