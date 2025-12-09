# Final Master's Project – Neurofibromatosis Type I

**Title:** _Integrative Analysis of Transcriptomic Data for the Identification of Molecular Mechanisms in Neurofibromatosis Type I_  
**Institution:** Universidad Pablo de Olavide 

---

## Description

This repository contains all scripts, analyses, and reports generated for the Final Master's Thesis. The project focuses on integrative transcriptomic analysis to identify key molecular mechanisms in Neurofibromatosis Type I.

---

## Project Structure

Below is a view of the repository structure. Files and directories are briefly described.

```text
.
├── README.md                    # Project description and instructions
├── scripts/                     # Analysis scripts
│   ├── DE_script.sh             # Differential expression pipeline
│   ├── Network_script.sh        # Network construction & analysis (part 1)
│   ├── Network_script_part2.sh  # Network construction & analysis (part 2)
│   └── name_replacer.R          # Helper R script to rename samples/genes
├── Reports/                     # Generated DEA and functional enrichment reports by ExpHunterSuite (HTML)
│   ├── DEG_report_ctrl_vs_gtdup.html
│   ├── DEG_report_gtdup_vs_opg.html
│   ├── DEG_report_mut_vs_ctrl.html
│   ├── DEG_report_opg_vs_ctrl_fc1.html
│   ├── functional_report_gtdup_vs_ctrl.html
│   ├── functional_report_gtdup_vs_opg.html
│   └── functional_report_opg_vs_ctrl_fc1.html
└── data/                        # Input datasets
    ├── final_counts.txt    # Counts table used for analysis
    └── mapping_report.html    # QC of the reads used for the analysis
```



