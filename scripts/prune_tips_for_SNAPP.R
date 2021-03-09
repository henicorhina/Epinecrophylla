#!/usr/bin/env Rscript

library("phytools", lib.loc="/Library/Frameworks/R.framework/Versions/3.4/Resources/library")

setwd("/Volumes/Backup_Plus/Epinecrophylla/1_analysis/SNAPP/")

tree <- read.tree("RAxML_bestTree.Epinecrophylla-75percent-best.tre")
aln <- read.nexus("Epinecrophylla_SNPs_phased_rmIndels_75_QC_DP_random.recode.min4.bin_trimmed.nexus")

#tree$tip.label
#pr.species <- c(tree$tip.label[2:12])
#pr.species
tree.noPR<-keep.tip(tree,c("Epinecrophylla_fulviventris_costaricensis_e17_LSU2299_0", "Epinecrophylla_amazonica_e3_MZUSP164_0", "Epinecrophylla_dentei_e6_MZUSP80591_0", "Epinecrophylla_erythrura_septentrionalis_e10_LSUMZ27716_0", "Epinecrophylla_fjeldsaai_e13_KU873_0", "Epinecrophylla_gutturalis_e26_USNM587338_0", "Epinecrophylla_haematonota_e36_LSU4579_0", "Epinecrophylla_haematonota_haematonota_e40_LSUMZ27427_0", "Epinecrophylla_leucophthalma_dissita_e43_LSUMZ75006_0", "Epinecrophylla_leucophthalma_e49_LSU18242_0", "Epinecrophylla_leucophthalma_phaeonota_e59_LSUMZ85998_0", "Epinecrophylla_leucophthalma_sordida_e62_FMNH457026_0", "Epinecrophylla_ornata_atrogularis_e64_LSU74213_0", "Epinecrophylla_ornata_hoffmannsi_e67_FMNH457051_0", "Epinecrophylla_ornata_meridionalis_e69_LSUMZ1082_0", "Epinecrophylla_pyrrhonota_e75_FMNH457014_0", "Epinecrophylla_pyrrhonota_e76_LSU4202_0", "Epinecrophylla_spodionota_sororia_e81_KU113634_0", "Epinecrophylla_spodionota_spodionota_e85_H234_0"))
plotTree(tree.noPR, node.numbers=T)
plot(tree.noPR, label.offset = 0.01)
nodelabels()
tiplabels()

tree.noPR.rr <- reroot(tree.noPR, node.number = 10, position = 0.5)
tree.noPR.rr <- root(tree.noPR, node = 20)
tree.noPR.rr <- root(tree.noPR, outgroup = "Epinecrophylla_fulviventris_costaricensis_e17_LSU2299_0", resolve.root = TRUE)
plot(tree.noPR.rr)

write.tree(tree.noPR.rr, file = "RAxML_bestTree.Epinecrophylla-75percent-best_trimmed.tre")

