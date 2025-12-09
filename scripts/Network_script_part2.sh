#! /usr/bin/env bash

export DEGHUNTER_MODE='DEVELOPMENT'

path_to_network="/Users/marmtnez/Desktop/Master_Bioinfo/TFM/Network/string_network.txt"
path_to_expressed_genes="/Users/marmtnez/Desktop/Master_Bioinfo/TFM/Results/degenes/deg_lists/genes_ctrl_vs_opg.txt"

add_annotation.R -i ./net_results/ENS_genes_gtdup_vs_opg -o ./net_results/ENS_genes_annotated_gtdup_vs_opg -I ENSEMBL
tail -n+2 ./net_results/ENS_genes_annotated_gtdup_vs_opg > ./net_results/ENS_genes_dictionary_gtdup_vs_opg

#standard_name_replacer -i ./nodes_network -I ./ENS_genes_dictionary -c 1,2 -f 1 -t 2 -o ./nodes_network_annotated
###Run script name_replacer.R
#rm  ./ENS_genes_annotated
