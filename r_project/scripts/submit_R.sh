#!/bin/sh

#SBATCH --job-name=R_job
#SBATCH -t 3-00:00:00
#SBATCH --mem=4G
#SBATCH --partition=single

# load R module
module load math/R/4.3.1

# submit job with CLI arg
Rscript $1 $2