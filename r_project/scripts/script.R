#######################################
############ Load Libs   ##############
############ Load config ##############
#######################################

#clear workspace
rm(list = ls())

# load R libraries
library(tidyverse)
library(CoRC)

# load utility functions
source("utilities/util_example.R")

# command line arguments
args <- commandArgs(trailingOnly = TRUE)

# read in job settings from config file
config <- jsonlite::fromJSON(args[1])

#######################################
############ Do Stuff #################
#######################################

# load data
data <- read_csv(config$data_path)

# do stuff
hello()
# ...


#######################################
########## Save Results ###############
#######################################
write_csv(data, file.path(config$output_dir, "results.csv"))