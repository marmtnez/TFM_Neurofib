#! /usr/bin/env bash

#Code for Network Analysis with Netanalyzer 

path_to_network="/Users/marmtnez/Desktop/Master_Bioinfo/TFM/Network/string_network.txt"
path_to_expressed_genes="/Users/marmtnez/Desktop/Master_Bioinfo/TFM/Results/degenes/deg_lists/genes_ctrl_vs_opg.txt"

#Step 1: Remove non-expressed genes from the original network
grep -vf $path_to_expressed_genes $path_to_network | cut -f 1,2 | tr '\t' '\n'| sort -u > ./discarded_genes.txt

#Step 2 : Run Netanalyzer to establish the connections onto which the DEGs will be mapped
netanalyzer -i $path_to_network -f pair -l main -d ./discarded_genes.txt --filter_connected_components 5 --output_network ./nodes_network
cut -f 1,2 nodes_network | tr '\t' '\n' | sort -u | sed '1s/^/Gene\n/' > ./ENS_genes
