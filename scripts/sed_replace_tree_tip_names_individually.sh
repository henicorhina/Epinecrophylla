#!/bin/bash

#cd /Users/home/Box\ Sync/Epinecrophylla_ms/Figures/Formatted_trees/ 
#cd /Volumes/Backup_Plus/Epinecrophylla/1_analysis/divergence_dates/exabayesTopology_mitogenomeBranches/
#cd /Volumes/Backup_Plus/Epinecrophylla/1_analysis/raxml_preliminary_tree_2500loci/
cd /Volumes/Backup_Plus/Epinecrophylla/0_Epinecrophylla_ms/1_Epinecrophylla_submission/1_revision/Data_to_add_to_a_repository/

#file name
#f=Epinec-astral_scored-renamed.tre
#f=Epinecrophylla-iqtree-concord.cf-renamed.tree
#f=RAxML_bipartitions.Epinecrophylla-75percent-final-renamed.tre
#f=RAxML_bipartitions.Epinecrophylla-95percent-final-renamed.tre
#f=ExaBayes_ConsensusExtendedMajorityRuleNewick.ExaBayes_95_ConsensusExtendedMajorityRuleNexus.run1-MRE-consensus-tree-renamed.tre
#f=ExaBayes_ConsensusExtendedMajorityRuleNewick.ExaBayes_75.run1-MRE-consensus-tree-renamed.tre
#f=RAxML_bestTree.raxml_mtDNA.best-renamed.tre
#f=RAxML_bipartitions.raxml_mtDNA.final-renamed.tre
#f=STACEY_150loci_substitutionModels_species25pBurnin_MCC-renamed.tre
#f=Epinecrophylla_concatenated_mtDNA_alignments.trees.56mil.tre
#f=Epinecrophylla_concatenated_mtDNA_alignments.trees.tre
#f=RAxML_bipartitions.final.tre
f=Epinecrophylla_BEAST_partitioned_mtDNA_alignment.combinedRuns.MCC.tre


sed -i "" 's/Epinecrophylla_amazonica_e1_LSU9217.fas/amazonica_amazonica_{45}/g' ${f}
sed -i "" 's/Epinecrophylla_amazonica_e2_LSUMZ31342.fas/amazonica_amazonica_{47}/g' ${f}
sed -i "" 's/Epinecrophylla_amazonica_e3_MZUSP164.fas/amazonica_amazonica_{46}/g' ${f}
sed -i "" 's/Epinecrophylla_amazonica_e5_LSUMZ75291.fas/haematonota_haematonota_{59}/g' ${f}
sed -i "" 's/Epinecrophylla_dentei_e6_MZUSP80591.fas/amazonica_dentei_{44}/g' ${f}
sed -i "" 's/Epinecrophylla_erythrura_erythrura_e8_ANSP16560.fas/erythrura_erythrura_{11}/g' ${f}
sed -i "" 's/Epinecrophylla_erythrura_septentrionalis_e10_LSUMZ27716.fas/erythrura_septentrionalis_{12}/g' ${f}
sed -i "" 's/Epinecrophylla_fjeldsaai_e13_KU873.fas/haematonota_fjeldsaai_{63}/g' ${f}
sed -i "" 's/Epinecrophylla_fjeldsaai_hybrid_e15_LSUMZ42704.fas/haematonota_fjeldsaai_{62}/g' ${f}
sed -i "" 's/Epinecrophylla_fulviventris_costaricensis_e17_LSU2299.fas/fulviventris_{2}/g' ${f}
sed -i "" 's/Epinecrophylla_fulviventris_costaricensis_e18_LSUMZ82086.fas/fulviventris_{1}/g' ${f}
sed -i "" 's/Epinecrophylla_gutturalis_e20_AMNH11921.fas/gutturalis_{37}/g' ${f}
sed -i "" 's/Epinecrophylla_gutturalis_e21_AMNH12689.fas/Myrmotherula_longipennis_{30}/g' ${f}
sed -i "" 's/Epinecrophylla_gutturalis_e22_USNM609157.fas/gutturalis_{35}/g' ${f}
sed -i "" 's/Epinecrophylla_gutturalis_e23_KU88801.fas/gutturalis_{34}/g' ${f}
sed -i "" 's/Epinecrophylla_gutturalis_e24_KU88804.fas/gutturalis_{33}/g' ${f}
sed -i "" 's/Epinecrophylla_gutturalis_e25_USNM586379.fas/gutturalis_{36}/g' ${f}
sed -i "" 's/Epinecrophylla_gutturalis_e26_USNM587338.fas/gutturalis_{41}/g' ${f}
sed -i "" 's/Epinecrophylla_gutturalis_e28_LSU55218.fas/gutturalis_{40}/g' ${f}
sed -i "" 's/Epinecrophylla_gutturalis_e29_LSUMZ71576.fas/gutturalis_{32}/g' ${f}
sed -i "" 's/Epinecrophylla_gutturalis_e30_YPM101670.fas/gutturalis_{43}/g' ${f}
sed -i "" 's/Epinecrophylla_gutturalis_e31_YPM137211.fas/gutturalis_{38}/g' ${f}
sed -i "" 's/Epinecrophylla_gutturalis_e33_YPM139633.fas/gutturalis_{42}/g' ${f}
sed -i "" 's/Epinecrophylla_gutturalis_e34_YPM139781.fas/gutturalis_{31}/g' ${f}
sed -i "" 's/Epinecrophylla_gutturalis_e35_LSU20398.fas/gutturalis_{39}/g' ${f}
sed -i "" 's/Epinecrophylla_haematonota_e36_LSU4579.fas/haematonota_haematonota_{60}/g' ${f}
sed -i "" 's/Epinecrophylla_haematonota_haematonota_e39_LSUMZ10790.fas/haematonota_haematonota_{61}/g' ${f}
sed -i "" 's/Epinecrophylla_haematonota_haematonota_e40_LSUMZ27427.fas/haematonota_haematonota_{65}/g' ${f}
sed -i "" 's/Epinecrophylla_haematonota_haematonota_e41_LSUMZ42282.fas/haematonota_haematonota_{66}/g' ${f}
sed -i "" 's/Epinecrophylla_haematonota_haematonota_e42_LSUMZ93087.fas/haematonota_haematonota_{64}/g' ${f}
sed -i "" 's/Epinecrophylla_leucophthalma_dissita_e43_LSUMZ75006.fas/leucophthalma_leucophthalma_west_{16}/g' ${f}
sed -i "" 's/Epinecrophylla_leucophthalma_e49_LSU18242.fas/leucophthalma_leucophthalma_east_{21}/g' ${f}
sed -i "" 's/Epinecrophylla_leucophthalma_leucophthalma_e44_LSUMZ5392.fas/spodionota_sororia_{53}/g' ${f}
sed -i "" 's/Epinecrophylla_leucophthalma_leucophthalma_e45_LSUMZ9173.fas/leucophthalma_leucophthalma_west_{15}/g' ${f}
sed -i "" 's/Epinecrophylla_leucophthalma_leucophthalma_e46_LSUMZ10538.fas/leucophthalma_leucophthalma_west_{14}/g' ${f}
sed -i "" 's/Epinecrophylla_leucophthalma_leucophthalma_e47_LSUMZ12394.fas/leucophthalma_leucophthalma_east_{23}/g' ${f}
sed -i "" 's/Epinecrophylla_leucophthalma_leucophthalma_e48_LSUMZ14575.fas/leucophthalma_leucophthalma_east_{22}/g' ${f}
sed -i "" 's/Epinecrophylla_leucophthalma_leucophthalma_e50_LSUMZ36628.fas/leucophthalma_leucophthalma_east_{20}/g' ${f}
sed -i "" 's/Epinecrophylla_leucophthalma_leucophthalma_e51_LSUMZ42670.fas/leucophthalma_leucophthalma_west_{13}/g' ${f}
sed -i "" 's/Epinecrophylla_leucophthalma_phaeonota_e53_FMNH389907.fas/leucophthalma_leucophthalma_east_{19}/g' ${f}
sed -i "" 's/Epinecrophylla_leucophthalma_phaeonota_e54_LSUMZ35603.fas/leucophthalma_phaeonota_{28}/g' ${f}
sed -i "" 's/Epinecrophylla_leucophthalma_phaeonota_e55_LSUMZ77807.fas/leucophthalma_phaeonota_{26}/g' ${f}
sed -i "" 's/Epinecrophylla_leucophthalma_phaeonota_e56_LSUMZ78380.fas/leucophthalma_phaeonota_{25}/g' ${f}
sed -i "" 's/Epinecrophylla_leucophthalma_phaeonota_e57_LSUMZ80774.fas/leucophthalma_phaeonota_{29}/g' ${f}
sed -i "" 's/Epinecrophylla_leucophthalma_phaeonota_e58_LSUMZ80818.fas/leucophthalma_phaeonota_{27}/g' ${f}
sed -i "" 's/Epinecrophylla_leucophthalma_phaeonota_e59_LSUMZ85998.fas/leucophthalma_phaeonota_{24}/g' ${f}
sed -i "" 's/Epinecrophylla_leucophthalma_sordida_e61_FMNH392048.fas/leucophthalma_sordida_{17}/g' ${f}
sed -i "" 's/Epinecrophylla_leucophthalma_sordida_e62_FMNH457026.fas/leucophthalma_sordida_{18}/g' ${f}
sed -i "" 's/Epinecrophylla_ornata_atrogularis_e64_LSU74213.fas/ornata_atrogularis_{4}/g' ${f}
sed -i "" 's/Epinecrophylla_ornata_atrogularis_e65_MSB36505.fas/ornata_atrogularis_{3}/g' ${f}
sed -i "" 's/Epinecrophylla_ornata_hoffmannsi_e66_FMNH391379.fas/ornata_hoffmannsi_{6}/g' ${f}
sed -i "" 's/Epinecrophylla_ornata_hoffmannsi_e67_FMNH457051.fas/ornata_hoffmannsi_{7}/g' ${f}
sed -i "" 's/Epinecrophylla_ornata_hoffmansi_e68_LSU78113.fas/ornata_hoffmannsi_{5}/g' ${f}
sed -i "" 's/Epinecrophylla_ornata_meridionalis_e69_LSUMZ1082.fas/ornata_meridionalis_{9}/g' ${f}
sed -i "" 's/Epinecrophylla_ornata_meridionalis_e70_LSUMZ9502.fas/ornata_meridionalis_{8}/g' ${f}
sed -i "" 's/Epinecrophylla_ornata_meridionalis_e71_LSUMZ78808.fas/ornata_meridionalis_{10}/g' ${f}
sed -i "" 's/Epinecrophylla_pyrrhonota_e74_AMNH14224.fas/haematonota_pyrrhonota_{56}/g' ${f}
sed -i "" 's/Epinecrophylla_pyrrhonota_e75_FMNH457014.fas/haematonota_pyrrhonota_{55}/g' ${f}
sed -i "" 's/Epinecrophylla_pyrrhonota_e76_LSU4202.fas/haematonota_pyrrhonota_{54}/g' ${f}
sed -i "" 's/Epinecrophylla_pyrrhonota_e77_LSUMZ7505.fas/haematonota_pyrrhonota_{58}/g' ${f}
sed -i "" 's/Epinecrophylla_pyrrhonota_e78_MZUSP79027.fas/haematonota_pyrrhonota_{57}/g' ${f}
sed -i "" 's/Epinecrophylla_spodionota_sororia_e80_FMNH474124.fas/spodionota_sororia_{52}/g' ${f}
sed -i "" 's/Epinecrophylla_spodionota_sororia_e81_KU113634.fas/spodionota_sororia_{48}/g' ${f}
sed -i "" 's/Epinecrophylla_spodionota_sororia_e82_LSUMZ2058.fas/spodionota_sororia_{49}/g' ${f}
sed -i "" 's/Epinecrophylla_spodionota_sororia_e83_LSUMZ76377.fas/spodionota_sororia_{50}/g' ${f}
sed -i "" 's/Epinecrophylla_spodionota_spodionota_e85_H234.fas/spodionota_spodionota_{51}/g' ${f}
sed -i "" 's/Myrmorchilus_strigilatus_LSUMZ18722.fas/Myrmorchilus_strigilatus/g' ${f}
sed -i "" 's/Neoctantes_niger_L2749.fas/Neoctantes_niger/g' ${f}



:'

sed -i "" 's/Epinecrophylla_amazonica_e1_LSU9217/amazonica_amazonica_{45}/g' ${f}
sed -i "" 's/Epinecrophylla_amazonica_e2_LSUMZ31342/amazonica_amazonica_{47}/g' ${f}
sed -i "" 's/Epinecrophylla_amazonica_e3_MZUSP164/amazonica_amazonica_{46}/g' ${f}
sed -i "" 's/Epinecrophylla_amazonica_e5_LSUMZ75291/haematonota_haematonota_{59}/g' ${f}
sed -i "" 's/Epinecrophylla_dentei_e6_MZUSP80591/amazonica_dentei_{44}/g' ${f}
sed -i "" 's/Epinecrophylla_erythrura_erythrura_e8_ANSP16560/erythrura_erythrura_{11}/g' ${f}
sed -i "" 's/Epinecrophylla_erythrura_septentrionalis_e10_LSUMZ27716/erythrura_septentrionalis_{12}/g' ${f}
sed -i "" 's/Epinecrophylla_fjeldsaai_e13_KU873/haematonota_fjeldsaai_{63}/g' ${f}
sed -i "" 's/Epinecrophylla_fjeldsaai_hybrid_e15_LSUMZ42704/haematonota_fjeldsaai_{62}/g' ${f}
sed -i "" 's/Epinecrophylla_fulviventris_costaricensis_e17_LSU2299/fulviventris_{2}/g' ${f}
sed -i "" 's/Epinecrophylla_fulviventris_costaricensis_e18_LSUMZ82086/fulviventris_{1}/g' ${f}
sed -i "" 's/Epinecrophylla_gutturalis_e20_AMNH11921/gutturalis_{37}/g' ${f}
sed -i "" 's/Epinecrophylla_gutturalis_e21_AMNH12689/Myrmotherula_longipennis_{30}/g' ${f}
sed -i "" 's/Epinecrophylla_gutturalis_e22_USNM609157/gutturalis_{35}/g' ${f}
sed -i "" 's/Epinecrophylla_gutturalis_e23_KU88801/gutturalis_{34}/g' ${f}
sed -i "" 's/Epinecrophylla_gutturalis_e24_KU88804/gutturalis_{33}/g' ${f}
sed -i "" 's/Epinecrophylla_gutturalis_e25_USNM586379/gutturalis_{36}/g' ${f}
sed -i "" 's/Epinecrophylla_gutturalis_e26_USNM587338/gutturalis_{41}/g' ${f}
sed -i "" 's/Epinecrophylla_gutturalis_e28_LSU55218/gutturalis_{40}/g' ${f}
sed -i "" 's/Epinecrophylla_gutturalis_e29_LSUMZ71576/gutturalis_{32}/g' ${f}
sed -i "" 's/Epinecrophylla_gutturalis_e30_YPM101670/gutturalis_{43}/g' ${f}
sed -i "" 's/Epinecrophylla_gutturalis_e31_YPM137211/gutturalis_{38}/g' ${f}
sed -i "" 's/Epinecrophylla_gutturalis_e33_YPM139633/gutturalis_{42}/g' ${f}
sed -i "" 's/Epinecrophylla_gutturalis_e34_YPM139781/gutturalis_{31}/g' ${f}
sed -i "" 's/Epinecrophylla_gutturalis_e35_LSU20398/gutturalis_{39}/g' ${f}
sed -i "" 's/Epinecrophylla_haematonota_e36_LSU4579/haematonota_haematonota_{60}/g' ${f}
sed -i "" 's/Epinecrophylla_haematonota_haematonota_e39_LSUMZ10790/haematonota_haematonota_{61}/g' ${f}
sed -i "" 's/Epinecrophylla_haematonota_haematonota_e40_LSUMZ27427/haematonota_haematonota_{65}/g' ${f}
sed -i "" 's/Epinecrophylla_haematonota_haematonota_e41_LSUMZ42282/haematonota_haematonota_{66}/g' ${f}
sed -i "" 's/Epinecrophylla_haematonota_haematonota_e42_LSUMZ93087/haematonota_haematonota_{64}/g' ${f}
sed -i "" 's/Epinecrophylla_leucophthalma_dissita_e43_LSUMZ75006/leucophthalma_leucophthalma_west_{16}/g' ${f}
sed -i "" 's/Epinecrophylla_leucophthalma_e49_LSU18242/leucophthalma_leucophthalma_east_{21}/g' ${f}
sed -i "" 's/Epinecrophylla_leucophthalma_leucophthalma_e44_LSUMZ5392/spodionota_sororia_{53}/g' ${f}
sed -i "" 's/Epinecrophylla_leucophthalma_leucophthalma_e45_LSUMZ9173/leucophthalma_leucophthalma_west_{15}/g' ${f}
sed -i "" 's/Epinecrophylla_leucophthalma_leucophthalma_e46_LSUMZ10538/leucophthalma_leucophthalma_west_{14}/g' ${f}
sed -i "" 's/Epinecrophylla_leucophthalma_leucophthalma_e47_LSUMZ12394/leucophthalma_leucophthalma_east_{23}/g' ${f}
sed -i "" 's/Epinecrophylla_leucophthalma_leucophthalma_e48_LSUMZ14575/leucophthalma_leucophthalma_east_{22}/g' ${f}
sed -i "" 's/Epinecrophylla_leucophthalma_leucophthalma_e50_LSUMZ36628/leucophthalma_leucophthalma_east_{20}/g' ${f}
sed -i "" 's/Epinecrophylla_leucophthalma_leucophthalma_e51_LSUMZ42670/leucophthalma_leucophthalma_west_{13}/g' ${f}
sed -i "" 's/Epinecrophylla_leucophthalma_phaeonota_e53_FMNH389907/leucophthalma_leucophthalma_east_{19}/g' ${f}
sed -i "" 's/Epinecrophylla_leucophthalma_phaeonota_e54_LSUMZ35603/leucophthalma_phaeonota_{28}/g' ${f}
sed -i "" 's/Epinecrophylla_leucophthalma_phaeonota_e55_LSUMZ77807/leucophthalma_phaeonota_{26}/g' ${f}
sed -i "" 's/Epinecrophylla_leucophthalma_phaeonota_e56_LSUMZ78380/leucophthalma_phaeonota_{25}/g' ${f}
sed -i "" 's/Epinecrophylla_leucophthalma_phaeonota_e57_LSUMZ80774/leucophthalma_phaeonota_{29}/g' ${f}
sed -i "" 's/Epinecrophylla_leucophthalma_phaeonota_e58_LSUMZ80818/leucophthalma_phaeonota_{27}/g' ${f}
sed -i "" 's/Epinecrophylla_leucophthalma_phaeonota_e59_LSUMZ85998/leucophthalma_phaeonota_{24}/g' ${f}
sed -i "" 's/Epinecrophylla_leucophthalma_sordida_e61_FMNH392048/leucophthalma_sordida_{17}/g' ${f}
sed -i "" 's/Epinecrophylla_leucophthalma_sordida_e62_FMNH457026/leucophthalma_sordida_{18}/g' ${f}
sed -i "" 's/Epinecrophylla_ornata_atrogularis_e64_LSU74213/ornata_atrogularis_{4}/g' ${f}
sed -i "" 's/Epinecrophylla_ornata_atrogularis_e65_MSB36505/ornata_atrogularis_{3}/g' ${f}
sed -i "" 's/Epinecrophylla_ornata_hoffmannsi_e66_FMNH391379/ornata_hoffmannsi_{6}/g' ${f}
sed -i "" 's/Epinecrophylla_ornata_hoffmannsi_e67_FMNH457051/ornata_hoffmannsi_{7}/g' ${f}
sed -i "" 's/Epinecrophylla_ornata_hoffmansi_e68_LSU78113/ornata_hoffmannsi_{5}/g' ${f}
sed -i "" 's/Epinecrophylla_ornata_meridionalis_e69_LSUMZ1082/ornata_meridionalis_{9}/g' ${f}
sed -i "" 's/Epinecrophylla_ornata_meridionalis_e70_LSUMZ9502/ornata_meridionalis_{8}/g' ${f}
sed -i "" 's/Epinecrophylla_ornata_meridionalis_e71_LSUMZ78808/ornata_meridionalis_{10}/g' ${f}
sed -i "" 's/Epinecrophylla_pyrrhonota_e74_AMNH14224/haematonota_pyrrhonota_{56}/g' ${f}
sed -i "" 's/Epinecrophylla_pyrrhonota_e75_FMNH457014/haematonota_pyrrhonota_{55}/g' ${f}
sed -i "" 's/Epinecrophylla_pyrrhonota_e76_LSU4202/haematonota_pyrrhonota_{54}/g' ${f}
sed -i "" 's/Epinecrophylla_pyrrhonota_e77_LSUMZ7505/haematonota_pyrrhonota_{58}/g' ${f}
sed -i "" 's/Epinecrophylla_pyrrhonota_e78_MZUSP79027/haematonota_pyrrhonota_{57}/g' ${f}
sed -i "" 's/Epinecrophylla_spodionota_sororia_e80_FMNH474124/spodionota_sororia_{52}/g' ${f}
sed -i "" 's/Epinecrophylla_spodionota_sororia_e81_KU113634/spodionota_sororia_{48}/g' ${f}
sed -i "" 's/Epinecrophylla_spodionota_sororia_e82_LSUMZ2058/spodionota_sororia_{49}/g' ${f}
sed -i "" 's/Epinecrophylla_spodionota_sororia_e83_LSUMZ76377/spodionota_sororia_{50}/g' ${f}
sed -i "" 's/Epinecrophylla_spodionota_spodionota_e85_H234/spodionota_spodionota_{51}/g' ${f}
sed -i "" 's/Myrmorchilus_strigilatus_LSUMZ18722/Myrmorchilus_strigilatus/g' ${f}
sed -i "" 's/Neoctantes_niger_L2749/Neoctantes_niger/g' ${f}

'

