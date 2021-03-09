# Epinecrophylla
Code from the publication: Johnson, O., Howard, J. T., and Brumfield, R. T. 2020. Systematics of a Neotropical clade of dead-leaf-foraging antwrens (Aves: Thamnophilidae; Epinecrophylla). Molecular Phylogenetics and Evolution 154:106962 
Published paper: https://doi.org/10.1016/j.ympev.2020.106962
Data repository: https://doi.org/10.5061/dryad.r2280gb9n

Included scripts:


`barcode_checks_co1.sh`: check mitochondrial by catch against CO1 barcodes for contamination

`Epinecrophylla_2500_phyluce.pbs`: process and align UCE contigs with Phyluce, estimate RAxML phylogeny

`Epinecrophylla_iqtree.pbs`: Estimate UCE phylogeny with IQ-TREE

`Epinecrophylla_mtDNA_tree.pbs`: Estimate mitochondrial phylogeny with RAxML

`Epinecrophylla_seqcap_pop_pipeline_NoOutgroup_reduced_to_clade.sh`: Phase samples with seqcap_pop (https://github.com/mgharvey/seqcap_pop)

`Epinecrophylla_vcftools_reduced_toClade_noOutgroup.sh`: Process and filter seqcap_pop output with vcftools

`exabayes.submit`: Estimate UCE phylogeny with ExaBayes

`format_and_plot_STRUCTURE_results.sh`: Format and plot STRUCTURE results

`gene_trees-all_UCEs-Epinecrophylla.sh`: Estimate UCE gene trees with RAxML

`jmodeltest_STACEY.sh`: Calculate UCE partition schemes with jmodeltest

`MITObim_epinecrophylla.sh`: Harvest mitochondrial bycatch from with MITObim

`plot_histogram.R`: Plot histograms of intra- and inter-specific genetic distance matrices

`prune_tips_for_SNAPP.R`: Prune tree tips for SNAPP

`reroot_tree.R`: Re-root tree for input into treePL

`Robinson-Foulds_distance.R`: Calculate RF distance between trees

`run_illumiprocessor.sh`: Run illumiprocessor

`sed_replace_str_sample_names_individually.sh`: replace tree tip names with sed

`SNAPP_runs_with_priors_run1.sh`: Run SNAPP

`structure_Epinecrophylla_pyrrhonota.sh`: Run STRUCTURE

`trim_cleaned_reads.sh`: subsample cleaned UCE reads

`trim_raw_reads.sh`: subsample raw UCE reads
