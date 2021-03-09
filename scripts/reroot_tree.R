#!/usr/bin/env Rscript

library('ape')

setwd("/Volumes/Backup_Plus/Epinecrophylla/1_analysis/treePL")

#read tree
UCE_tree <- read.nexus(file="Epinecrophylla-exabayes-75-rerooted-inFigTree_Newick.tre")

#plot(UCE_tree, type = "phylogram", edge.width = 2)
#nodelabels()
is.rooted(UCE_tree) # should be false
outgroup <- c("Myrmorchilus_strigilatus_LSUMZ18722_0", "Myrmorchilus_strigilatus_LSUMZ18722_1")
rooted_tree <- root(UCE_tree, outgroup, resolve.root = TRUE)
#plot(rooted_tree, type = "phylogram", edge.width = 2)
is.rooted(rooted_tree) #checking that the rooting worked

write.tree(rooted_tree, file = "rooted_tree.newick.tre")


# just looking to see what the tree looks like with branch lengths squared
# rooted_tree_bl_square <- compute.brlen(UCE_tree, power=1.5)
# plot(rooted_tree_bl_square, type = "phylogram", edge.width = 2)
# write.tree(rooted_tree_bl_square, file = "rooted_tree_square.newick.tre")


# drop one allele, for phased data
# read tree
UCE_zero_tree <- read.tree(file="rooted_tree.newick_zero_terminal_branch_lengths.tre")
tips <- c("Epinecrophylla_amazonica_e1_LSU9217_1", "Epinecrophylla_amazonica_e2_LSUMZ31342_1", "Epinecrophylla_amazonica_e3_MZUSP164_1", "Epinecrophylla_amazonica_e5_LSUMZ75291_1", "Epinecrophylla_dentei_e6_MZUSP80591_1", "Epinecrophylla_erythrura_septentrionalis_e10_LSUMZ27716_1", "Epinecrophylla_fjeldsaai_e13_KU873_1", "Epinecrophylla_fjeldsaai_hybrid_e15_LSUMZ42704_1", "Epinecrophylla_fulviventris_costaricensis_e17_LSU2299_1", "Epinecrophylla_fulviventris_costaricensis_e18_LSUMZ82086_1", "Epinecrophylla_gutturalis_e20_AMNH11921_1", "Epinecrophylla_gutturalis_e22_USNM609157_1", "Epinecrophylla_gutturalis_e23_KU88801_1", "Epinecrophylla_gutturalis_e24_KU88804_1", "Epinecrophylla_gutturalis_e25_USNM586379_1", "Epinecrophylla_gutturalis_e26_USNM587338_1", "Epinecrophylla_gutturalis_e28_LSU55218_1", "Epinecrophylla_gutturalis_e29_LSUMZ71576_1", "Epinecrophylla_gutturalis_e30_YPM101670_1", "Epinecrophylla_gutturalis_e31_YPM137211_1", "Epinecrophylla_gutturalis_e33_YPM139633_1", "Epinecrophylla_gutturalis_e34_YPM139781_1", "Epinecrophylla_gutturalis_e35_LSU20398_1", "Epinecrophylla_haematonota_e36_LSU4579_1", "Epinecrophylla_haematonota_haematonota_e39_LSUMZ10790_1", "Epinecrophylla_haematonota_haematonota_e40_LSUMZ27427_1", "Epinecrophylla_haematonota_haematonota_e41_LSUMZ42282_1", "Epinecrophylla_haematonota_haematonota_e42_LSUMZ93087_1", "Epinecrophylla_leucophthalma_dissita_e43_LSUMZ75006_1", "Epinecrophylla_leucophthalma_e49_LSU18242_1", "Epinecrophylla_leucophthalma_leucophthalma_e44_LSUMZ5392_1", "Epinecrophylla_leucophthalma_leucophthalma_e45_LSUMZ9173_1", "Epinecrophylla_leucophthalma_leucophthalma_e46_LSUMZ10538_1", "Epinecrophylla_leucophthalma_leucophthalma_e47_LSUMZ12394_1", "Epinecrophylla_leucophthalma_leucophthalma_e48_LSUMZ14575_1", "Epinecrophylla_leucophthalma_leucophthalma_e50_LSUMZ36628_1", "Epinecrophylla_leucophthalma_leucophthalma_e51_LSUMZ42670_1", "Epinecrophylla_leucophthalma_phaeonota_e53_FMNH389907_1", "Epinecrophylla_leucophthalma_phaeonota_e54_LSUMZ35603_1", "Epinecrophylla_leucophthalma_phaeonota_e55_LSUMZ77807_1", "Epinecrophylla_leucophthalma_phaeonota_e56_LSUMZ78380_1", "Epinecrophylla_leucophthalma_phaeonota_e57_LSUMZ80774_1", "Epinecrophylla_leucophthalma_phaeonota_e58_LSUMZ80818_1", "Epinecrophylla_leucophthalma_phaeonota_e59_LSUMZ85998_1", "Epinecrophylla_leucophthalma_sordida_e61_FMNH392048_1", "Epinecrophylla_leucophthalma_sordida_e62_FMNH457026_1", "Epinecrophylla_ornata_atrogularis_e64_LSU74213_1", "Epinecrophylla_ornata_atrogularis_e65_MSB36505_1", "Epinecrophylla_ornata_hoffmannsi_e66_FMNH391379_1", "Epinecrophylla_ornata_hoffmannsi_e67_FMNH457051_1", "Epinecrophylla_ornata_hoffmansi_e68_LSU78113_1", "Epinecrophylla_ornata_meridionalis_e69_LSUMZ1082_1", "Epinecrophylla_ornata_meridionalis_e70_LSUMZ9502_1", "Epinecrophylla_ornata_meridionalis_e71_LSUMZ78808_1", "Epinecrophylla_pyrrhonota_e74_AMNH14224_1", "Epinecrophylla_pyrrhonota_e75_FMNH457014_1", "Epinecrophylla_pyrrhonota_e76_LSU4202_1", "Epinecrophylla_pyrrhonota_e77_LSUMZ7505_1", "Epinecrophylla_pyrrhonota_e78_MZUSP79027_1", "Epinecrophylla_spodionota_sororia_e80_FMNH474124_1", "Epinecrophylla_spodionota_sororia_e81_KU113634_1", "Epinecrophylla_spodionota_sororia_e82_LSUMZ2058_1", "Epinecrophylla_spodionota_spodionota_e85_H234_1", "Myrmorchilus_strigilatus_LSUMZ18722_1", "Neoctantes_niger_L2749_1")
UCE_zero_tree.pruned <- keep.tip(UCE_zero_tree, tips)
is.rooted(UCE_zero_tree.pruned)
write.tree(UCE_zero_tree.pruned, file = "rooted_tree-one_tip_per_ind.newick.tre")

