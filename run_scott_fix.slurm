#!/bin/bash

#SBATCH --job-name=stdpopsim_analysis2_scott_fix
#SBATCH --output=outfiles/%x-%j.out
#SBATCH --error=outfiles/%x-%j.err
#SBATCH --account=rgutenk
#SBATCH --partition=high_priority
#SBATCH --qos=user_qos_rgutenk
#SBATCH --mail-type=ALL
#SBATCH --mail-user=lnt@arizona.edu
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem=10gb
#SBATCH --time=10:00:00

source ~/.bashrc && conda activate analysis2
date
snakemake --profile workflows/config/snakemake/arizona_profile/ --unlock
snakemake --profile workflows/config/snakemake/arizona_profile/
# snakemake -c 10 all
# snakemake -c 10 --snakefile workflows/simulation.snake
date