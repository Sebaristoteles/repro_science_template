library(here)
library(dplyr)
library(gapminder)

# load gapminder data
gapminder_data <- gapminder::gapminder

# save in data folder
write_csv(gapminder_data, here("data", "generated", "gapminder.csv"))
