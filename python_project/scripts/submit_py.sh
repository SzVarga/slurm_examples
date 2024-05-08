#!/bin/sh

#SBATCH --job-name=Python_job
#SBATCH -t 3-00:00:00
#SBATCH --mem=4G
#SBATCH --partition=single

# load Python module
module load devel/python/3.10.0

# activate virtual environment
source env/bin/activate

# check requirements and install if needed
pip install -r requirements.txt

# submit job with CLI arg
python $1 $2

# deactivate virtual environment
deactivate