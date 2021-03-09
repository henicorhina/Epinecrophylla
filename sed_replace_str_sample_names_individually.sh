#!/bin/bash

cd /Volumes/Backup_Plus/Epinecrophylla/1_analysis/DAPC/ 

#file name
#f=Epinecrophylla_pyrrhonota_SNPs_phased_rmIndels_75_QC_DP_seqcap_pop_structure_relabeled.str
#f=Epinecrophylla_gutturalis_SNPs_phased_rmIndels_75_QC_DP_seqcap_pop_structure-relabeled.str
f=Epinecrophylla_leucophthalma_SNPs_phased_rmIndels_75_QC_DP_seqcap_pop_structure_relabeled.str
#f=Epinecrophylla_ornata_SNPs_phased_rmIndels_75_QC_DP_seqcap_pop_structure_relabeled.str

sed -i "" 's/amazonica_e1_LSU9217/amazonica_[45]/g' ${f}
sed -i "" 's/amazonica_e2_LSUMZ31342/amazonica_[47]/g' ${f}
sed -i "" 's/amazonica_e3_MZUSP164/amazonica_[46]/g' ${f}
sed -i "" 's/haematonota_e5_LSUMZ75291/haematonota_[59]/g' ${f}
sed -i "" 's/dentei_e6_MZUSP80591/amazonica_dentei_[44]/g' ${f}
sed -i "" 's/erythrura_erythrura_e8_ANSP16560/erythrura_[11]/g' ${f}
sed -i "" 's/erythrura_septentrionalis_e10_LSUMZ27716/septentrionalis_[12]/g' ${f}
sed -i "" 's/fjeldsaai_e13_KU873/fjeldsaai_[63]/g' ${f}
sed -i "" 's/fjeldsaai_hybrid_e15_LSUMZ42704/fjeldsaai_[62]/g' ${f}
sed -i "" 's/fulviventris_costaricensis_e17_LSU2299/fulviventris_[2]/g' ${f}
sed -i "" 's/fulviventris_costaricensis_e18_LSUMZ82086/fulviventris_[1]/g' ${f}
sed -i "" 's/gutturalis_e20_AMNH11921/gutturalis_[37]/g' ${f}
sed -i "" 's/gutturalis_e21_AMNH12689/Myrmotherula_longipennis_[30]/g' ${f}
sed -i "" 's/gutturalis_e22_USNM609157/gutturalis_[35]/g' ${f}
sed -i "" 's/gutturalis_e23_KU88801/gutturalis_[34]/g' ${f}
sed -i "" 's/gutturalis_e24_KU88804/gutturalis_[33]/g' ${f}
sed -i "" 's/gutturalis_e25_USNM586379/gutturalis_[36]/g' ${f}
sed -i "" 's/gutturalis_e26_USNM587338/gutturalis_[41]/g' ${f}
sed -i "" 's/gutturalis_e28_LSU55218/gutturalis_[40]/g' ${f}
sed -i "" 's/gutturalis_e29_LSUMZ71576/gutturalis_[32]/g' ${f}
sed -i "" 's/gutturalis_e30_YPM101670/gutturalis_[43]/g' ${f}
sed -i "" 's/gutturalis_e31_YPM137211/gutturalis_[38]/g' ${f}
sed -i "" 's/gutturalis_e33_YPM139633/gutturalis_[42]/g' ${f}
sed -i "" 's/gutturalis_e34_YPM139781/gutturalis_[31]/g' ${f}
sed -i "" 's/gutturalis_e35_LSU20398/gutturalis_[39]/g' ${f}
sed -i "" 's/haematonota_e36_LSU4579/haematonota_[60]/g' ${f}
sed -i "" 's/haematonota_e39_LSUMZ10790/haematonota_[61]/g' ${f}
sed -i "" 's/haematonota_e40_LSUMZ27427/haematonota_[65]/g' ${f}
sed -i "" 's/haematonota_e41_LSUMZ42282/haematonota_[66]/g' ${f}
sed -i "" 's/haematonota_e42_LSUMZ93087/haematonota_[64]/g' ${f}
sed -i "" 's/dissita_e43_LSUMZ75006/leucophthalma_west_[16]/g' ${f}
sed -i "" 's/leucophthalma_e49_LSU18242/leucophthalma_west_[21]/g' ${f}
sed -i "" 's/leucophthalma_leucophthalma_e44_LSUMZ5392/sororia_[53]/g' ${f}
sed -i "" 's/leucophthalma_e45_LSUMZ9173/leucophthalma_west_[15]/g' ${f}
sed -i "" 's/leucophthalma_e46_LSUMZ10538/leucophthalma_west_[14]/g' ${f}
sed -i "" 's/leucophthalma_e47_LSUMZ12394/leucophthalma_west_[23]/g' ${f}
sed -i "" 's/leucophthalma_e48_LSUMZ14575/leucophthalma_west_[22]/g' ${f}
sed -i "" 's/leucophthalma_e50_LSUMZ36628/leucophthalma_west_[20]/g' ${f}
sed -i "" 's/leucophthalma_e51_LSUMZ42670/leucophthalma_west_[13]/g' ${f}
sed -i "" 's/phaeonota_e53_FMNH389907/leucophthalma_west_[19]/g' ${f}
sed -i "" 's/phaeonota_e54_LSUMZ35603/phaeonota_[28]/g' ${f}
sed -i "" 's/phaeonota_e55_LSUMZ77807/phaeonota_[26]/g' ${f}
sed -i "" 's/phaeonota_e56_LSUMZ78380/phaeonota_[25]/g' ${f}
sed -i "" 's/phaeonota_e57_LSUMZ80774/phaeonota_[29]/g' ${f}
sed -i "" 's/phaeonota_e58_LSUMZ80818/phaeonota_[27]/g' ${f}
sed -i "" 's/phaeonota_e59_LSUMZ85998/phaeonota_[24]/g' ${f}
sed -i "" 's/sordida_e61_FMNH392048/sordida_[17]/g' ${f}
sed -i "" 's/sordida_e62_FMNH457026/sordida_[18]/g' ${f}
sed -i "" 's/atrogularis_e64_LSU74213/atrogularis_[4]/g' ${f}
sed -i "" 's/atrogularis_e65_MSB36505/atrogularis_[3]/g' ${f}
sed -i "" 's/hoffmannsi_e66_FMNH391379/hoffmannsi_[6]/g' ${f}
sed -i "" 's/hoffmannsi_e67_FMNH457051/hoffmannsi_[7]/g' ${f}
sed -i "" 's/hoffmannsi_e68_LSU78113/hoffmannsi_[5]/g' ${f}
sed -i "" 's/meridionalis_e69_LSUMZ1082/meridionalis_[9]/g' ${f}
sed -i "" 's/meridionalis_e70_LSUMZ9502/meridionalis_[8]/g' ${f}
sed -i "" 's/meridionalis_e71_LSUMZ78808/meridionalis_[10]/g' ${f}
sed -i "" 's/pyrrhonota_e74_AMNH14224/pyrrhonota_[56]/g' ${f}
sed -i "" 's/pyrrhonota_e75_FMNH457014/pyrrhonota_[55]/g' ${f}
sed -i "" 's/pyrrhonota_e76_LSU4202/pyrrhonota_[54]/g' ${f}
sed -i "" 's/pyrrhonota_e77_LSUMZ7505/pyrrhonota_[58]/g' ${f}
sed -i "" 's/pyrrhonota_e78_MZUSP79027/pyrrhonota_[57]/g' ${f}
sed -i "" 's/sororia_e80_FMNH474124/sororia_[52]/g' ${f}
sed -i "" 's/sororia_e81_KU113634/sororia_[48]/g' ${f}
sed -i "" 's/sororia_e82_LSUMZ2058/sororia_[49]/g' ${f}
sed -i "" 's/sororia_e83_LSUMZ76377/sororia_[50]/g' ${f}
sed -i "" 's/spodionota_e85_H234/spodionota_[51]/g' ${f}
sed -i "" 's/Myrmorchilus_strigilatus_LSUMZ18722/Myrmorchilus_strigilatus/g' ${f}
sed -i "" 's/Neoctantes_niger_L2749/Neoctantes_niger/g' ${f}
