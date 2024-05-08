#######################################
############ Load Libs   ##############
############ Load config ##############
#######################################

# load Python libraries
import sys
import json
import pandas as pd
import os

# load utility functions
sys.path.append(".")
from utilities import util_example as utils

# command line arguments
args = sys.argv[1:]

# read in job settings from config file
with open(args[0], 'r') as f:
  config = json.load(f)

#######################################
############ Do Stuff #################
#######################################

# load data
data = pd.read_csv(config['data_path'])

# do stuff
utils.hello()
# ...

#######################################
########## Save Results ###############
#######################################
data.to_csv(os.path.join(config['output_dir'], 'results.csv'), index=False)
