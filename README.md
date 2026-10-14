# GWAS Network propagation 

This repository contains the code used for the network-propagation step of the article "Genome-wide integrative analysis links KCTD20 and PTPRD regulatory loci to chronic pain".

### Structure of the repository:
```
./cfg/         --> seed nodes
./data/        --> networks in pickle format
./env/         --> YAML file for environment reproducibility
./notebooks/   --> jupyter notebooks used for the analysis (sequentially numbered)
./scripts/     --> bash file used to get raw data
./output/      --> output of the analyses
```

**To reproduce the environment:**
1. create a conda env from the yaml in `env` folder
   ```
   conda env create -f env/environment.yml 
   ```
2. activate the environment
   ```
   conda activate gwas-network
   ```
3. Select the environment when running Jupyter Notebooks