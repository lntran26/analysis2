#!/bin/bash

#SBATCH --job-name=stdpopsim_analysis2_simulation_neutral
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
#SBATCH --time=4:00:00

source ~/.bashrc && conda activate analysis2
date
snakemake -s workflows/simulation.snake --profile workflows/config/snakemake/arizona_profile/ --unlock
snakemake -s workflows/simulation.snake --profile workflows/config/snakemake/arizona_profile/
date