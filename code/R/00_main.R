# Run all R scripts in the correct order for the project

library(here)

source(here("code", "R", "01_data_prep.R"))
source(here("code", "R", "02_figures.R"))
source(here("code", "R", "03_tables.R"))
