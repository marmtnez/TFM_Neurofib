
#!/usr/bin/env bash

#Code for Differential Expression and Functional Enrichment Analyses (ExpHunterSuite)
#All comparisons

export DEGHUNTER_MODE='DEVELOPMENT'

resultsDir="/Users/marmtnez/Desktop/Master_Bioinfo/TFM/Results"
inputFilesDir="/Users/marmtnez/Desktop/Master_Bioinfo/TFM/Files"

#Control vs Mutants (opg and gtdup)
degenes_Hunter.R -p 0.05 -m DE -c 2 -f 1.5 -i $inputFilesDir/final_counts.txt -t $inputFilesDir/ctrl_vs_mut_target.txt -o $resultsDir/degenes/ctrl_vs_mut_degenes
functional_Hunter.R -i $resultsDir/degenes/ctrl_vs_mut_degenes -t E -c 1 -o $resultsDir/functional/ctrl_vs_mut_fe_kegg -m Human


#Control (without Ctrl 3) vs Mutants
degenes_Hunter.R -p 0.05 -m DE -c 2 -f 1.5 -i $inputFilesDir/final_counts.txt -t $inputFilesDir/ctrl_vs_mut_target_noctrl3.txt -o $resultsDir/degenes/ctrl_vs_mut_noctrl3_degenes
functional_Hunter.R -i $resultsDir/degenes/ctrl_vs_mut_noctrl3_degenes -t E -c 1 -o $resultsDir/functional/ctrl_vs_mut_noctrl3_fe -m Human

#Control (without Ctrl 3) vs Opg
degenes_Hunter.R -p 0.05 -m DE -c 2 -f 1.5 -i $inputFilesDir/final_counts.txt -t $inputFilesDir/ctrl_vs_opg_target.txt -o $resultsDir/degenes/ctrl_vs_opg_degenes
functional_Hunter.R -i $resultsDir/degenes/ctrl_vs_opg_degenes -t E -c 1 -o $resultsDir/functional/ctrl_vs_opg_fe -m Human

#Control (without Ctlr 3) vs Opg. Log2FC threshold = 1
degenes_Hunter.R -p 0.05 -m DE -c 2 -f 1 -i $inputFilesDir/final_counts.txt -t $inputFilesDir/ctrl_vs_opg_target.txt -o $resultsDir/degenes/ctrl_vs_opg_degenes_fc1
functional_Hunter.R -i $resultsDir/degenes/ctrl_vs_opg_degenes_fc1 -t E -c 1 -o $resultsDir/functional/ctrl_vs_opg_fc1_fe -m Human

#Control (without Ctlr 3) vs Gtdup
degenes_Hunter.R -p 0.05 -m DE -c 2 -f 1.5 -i $inputFilesDir/final_counts.txt -t $inputFilesDir/ctrl_vs_gtdup_target.txt -o $resultsDir/degenes/ctrl_vs_gtdup_degenes
functional_Hunter.R -i $resultsDir/degenes/ctrl_vs_gtdup_degenes -t E -c 1 -o $resultsDir/functional/ctrl_vs_gtdup_fe -m Human

#Opg vs Gtdup
degenes_Hunter.R -p 0.05 -m DE -c 2 -f 1.5 -i $inputFilesDir/final_counts.txt -t $inputFilesDir/opg_vs_gtdup_target.txt -o $resultsDir/degenes/opg_vs_gtdup_degenes
functional_Hunter.R -i $resultsDir/degenes/opg_vs_gtdup_degenes -t E -c 1 -o $resultsDir/functional/opg_vs_gtdup_fe -m Human
