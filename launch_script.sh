
#!/usr/bin/env bash
export DEGHUNTER_MODE='DEVELOPMENT'

resultsDir="/Users/marmtnez/Desktop/Master_Bioinfo/TFM/Results"
inputFilesDir="/Users/marmtnez/Desktop/Master_Bioinfo/TFM/Files"

#degenes_Hunter.R -p 0.05 -m DE -c 2 -f 1.5 -i $inputFilesDir/final_counts.txt -t $inputFilesDir/ctrl_vs_mut_target.txt -o $resultsDir/degenes/ctrl_vs_mut_degenes

#functional_Hunter.R -i $resultsDir/degenes/ctrl_vs_mut_degenes -t E -c 1 -o $resultsDir/functional/ctrl_vs_mut_fe_kegg -m Human

#download_KEGG_file.R

#Ctrl_vs_Mut_No_Ctrl3
#degenes_Hunter.R -p 0.05 -m DE -c 2 -f 1.5 -i $inputFilesDir/final_counts.txt -t $inputFilesDir/ctrl_vs_mut_target_noctrl3.txt -o $resultsDir/degenes/ctrl_vs_mut_noctrl3_degenes

#functional_Hunter.R -i $resultsDir/degenes/ctrl_vs_mut_noctrl3_degenes -t E -c 1 -o $resultsDir/functional/ctrl_vs_mut_noctrl3_fe -m Human

#Ctrl_vs_Opg
#degenes_Hunter.R -p 0.05 -m DE -c 2 -f 1.5 -i $inputFilesDir/final_counts.txt -t $inputFilesDir/ctrl_vs_opg_target.txt -o $resultsDir/degenes/ctrl_vs_opg_degenes

#functional_Hunter.R -i $resultsDir/degenes/ctrl_vs_opg_degenes -t E -c 1 -o $resultsDir/functional/ctrl_vs_opg_fe -m Human

#Ctrl_vs_Gtdup
#degenes_Hunter.R -p 0.05 -m DE -c 2 -f 1.5 -i $inputFilesDir/final_counts.txt -t $inputFilesDir/ctrl_vs_gtdup_target.txt -o $resultsDir/degenes/ctrl_vs_gtdup_degenes

#functional_Hunter.R -i $resultsDir/degenes/ctrl_vs_gtdup_degenes -t E -c 1 -o $resultsDir/functional/ctrl_vs_gtdup_fe -m Human

#Opg_vs_Gtdup
#degenes_Hunter.R -p 0.05 -m DE -c 2 -f 1.5 -i $inputFilesDir/final_counts.txt -t $inputFilesDir/opg_vs_gtdup_target.txt -o $resultsDir/degenes/opg_vs_gtdup_degenes

#functional_Hunter.R -i $resultsDir/degenes/opg_vs_gtdup_degenes -t E -c 1 -o $resultsDir/functional/opg_vs_gtdup_fe -m Human

#Ctrl_vs_Opg_logFC1
#degenes_Hunter.R -p 0.05 -m DE -c 2 -f 1 -i $inputFilesDir/final_counts.txt -t $inputFilesDir/ctrl_vs_opg_target.txt -o $resultsDir/degenes/ctrl_vs_opg_degenes_fc1
#functional_Hunter.R -i $resultsDir/degenes/ctrl_vs_opg_degenes_fc1 -t E -c 1 -o $resultsDir/functional/ctrl_vs_opg_fc1_fe -m Human


#Gtdup_vs_Opg
degenes_Hunter.R -p 0.05 -m DE -c 2 -f 1.5 -i $inputFilesDir/final_counts.txt -t $inputFilesDir/gtdup_vs_opg_target.txt -o $resultsDir/degenes/gtdup_vs_opg_degenes

