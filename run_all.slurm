#!/bin/bash

#SBATCH --job-name=stdpopsim_analysis2_mutation_rate_fix
#SBATCH --output=outfiles/%x-%j.out
#SBATCH --error=outfiles/%x-%j.err
#SBATCH --account=rgutenk
#SBATCH --partition=high_priority
#SBATCH --qos=user_qos_rgutenk
#SBATCH --mail-type=ALL
#SBATCH --mail-user=lnt@arizona.edu
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem=5gb
#SBATCH --time=24:00:00

source ~/.bashrc && micromamba activate analysis2
date
snakemake --profile workflows/config/snakemake/arizona_profile/ --unlock
snakemake --profile workflows/config/snakemake/arizona_profile/
date