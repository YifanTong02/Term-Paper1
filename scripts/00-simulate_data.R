#### Preamble ####
# Purpose: Simulates a dataframe structurally similar to the dataframe obtained after reading in csv
# Author: Yifan Tong
# Date: January 23, 2024
# Contact: yifan.tong@mail.utoronto.ca
# License: MIT


#### Workspace setup ####
library(tidyverse)


#### Simulate data ####
n <- 72 # number of observations
population_group <- rep("All Population", n) # same population group
# the dates will be the same as our true data
date <- seq.Date(from = ymd("2018-01-01"), to = ymd("2023-12-01"), by = "month")
# year is based on generated date
Year <- year(date)

# generate the rest count date with poisson distribution and form data frame

simulated <- data.frame(
  date = date,
  population_group = population_group,
  newly_identified = rpois(n, 500),
  actively_homeless = rpois(n, 7000),
  gender_male = rpois(n, 4000),
  gender_female = rpois(n, 3000),
  moved_to_housing = rpois(n, lambda = 1000),
  Year = Year
)

# the simulated data has the same structure as the dataframe read in


