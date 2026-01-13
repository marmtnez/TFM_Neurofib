# Final Master's Project – Neurofibromatosis Type I

**Title:** Integrative Transcriptomic Analysis to Identify Molecular Mechanisms in Neurofibromatosis Type 1 
**Institution:** Universidad Pablo de Olavide 

---

## Project Overview

This repository contains all scripts, analyses, and reports developed for the Final Master’s Thesis. The project focuses on the integrative analysis of transcriptomic data to identify key molecular mechanisms underlying Neurofibromatosis Type I (NF1).

The workflow combines differential expression analysis, functional enrichment, and network-based approaches to uncover dysregulated pathways and gene interactions relevant to the disease.

> _**Note**: The _`Integrative_code`_ directory was designed to run on Picasso (UMA supercomputer). Adaptation for local execution is planned._

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
│   ├── name_replacer.R          # Helper R script to rename genes
│   └── Integrative_code         # Code for Network Analysis
│       ├── daemon.sh            
│       ├── template.af
├── Reports/                     # Generated DEA and functional enrichment reports by ExpHunterSuite (HTML)
│   ├── DEG_report_ctrl_vs_gtdup.html
│   ├── DEG_report_gtdup_vs_opg.html
│   ├── DEG_report_mut_vs_ctrl.html
│   ├── DEG_report_opg_vs_ctrl_fc1.html
│   ├── functional_report_gtdup_vs_ctrl.html
│   ├── functional_report_gtdup_vs_opg.html
│   └── functional_report_opg_vs_ctrl_fc1.html
└── data/                       # Input datasets
    ├── final_counts.txt        # Counts table used for analysis
    └── mapping_report.html     # QC of the reads used for the analysis
```



