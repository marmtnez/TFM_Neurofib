#! /usr/bin/env bash
source ~soft_bio_267/initializes/init_python

mode=$1

cur_dir=`pwd`
data_path=$cur_dir/data
tmp_path=$cur_dir/tmp

mkdir -p $data_path
mkdir -p $tmp_path

if [[ "$mode" == "D" ]]; then
	# 1. Download and decompress files:
	wget 'http://purl.obolibrary.org/obo/hp/hpoa/genes_to_phenotype.txt' -O $data_path/genes_to_phenotype.txt
	wget "https://stringdb-downloads.org/download/protein.links.detailed.v12.0/9606.protein.links.detailed.v12.0.txt.gz" -O $data_path'/9606.protein.links.detailed.v12.0.txt.gz'
	wget "https://stringdb-downloads.org/download/protein.aliases.v12.0/9606.protein.aliases.v12.0.txt.gz" -O $data_path'/9606.protein.aliases.v12.0.txt.gz'
	gzip -d $data_path'/9606.protein.links.detailed.v12.0.txt.gz'
	gzip -d $data_path'/9606.protein.aliases.v12.0.txt.gz'
fi

if [[ "$mode" == "P" ]]; then
	# Creating ENSP to ENSG dictionary
	grep 'Ensembl_gene' $data_path'/9606.protein.aliases.v12.0.txt' > $data_path'/dictionary_ENSP_ENSG'
	grep 'Ensembl_HGNC_symbol' $data_path'/9606.protein.aliases.v12.0.txt' | cut -f 1,2 > $data_path'/protein_geneID_dict'
	standard_name_replacer -i $data_path'/protein_geneID_dict' -I $data_path'/dictionary_ENSP_ENSG' -c 1 -f 1 -t 2 > $data_path'/ensembl_geneID_dict'
	echo 'Replacing names'
	standard_name_replacer -i $data_path'/9606.protein.links.detailed.v12.0.txt' \
	 	-I $data_path'/dictionary_ENSP_ENSG' -s ' ' -c 1,2 -f 1 -t 2 | sed -E "s/ /\t/g" > $data_path'/string_ensemblIDs.txt'
	cut -f 1,2,7 $data_path'/string_ensemblIDs.txt' | awk '{if ($3 >= 300) print $0}' | tail -n +2 > $data_path'/string_network.txt'
	awk '{print $1 "\n" $2}' $data_path'/string_network.txt' | sort -u > $data_path'/string_network_genes.txt'
fi

#TODO incluir lista de genes

if [[ "$mode" == "1"  ]]; then
	source ~soft_bio_267/initializes/init_autoflow
	pvalue_cutoff='0.01'
	#mkdir $cur_dir/results
   	variables=`echo -e "
    	\\$string_network=$data_path'/string_network.txt',
    	\\$degs_list=$data_path'/degs_list',
    	\\$target_gene=NF1,
    	\\$dict=$data_path'/ensembl_geneID_dict',
    	\\$pvalue_cutoff=$pvalue_cutoff" | tr -d '[:space:]' `
	echo $variables
	AutoFlow -e -w $cur_dir/template/template.af -V $variables -o $cur_dir/results_gtdup_vs_opg -m 20gb -t 3-00:00:00 -n cal -c 10 -L $2		
fi

