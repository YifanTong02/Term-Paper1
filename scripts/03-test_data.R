#### Preamble ####
# Purpose: Tests for data
# Author: Yifan Tong
# Date: January 23, 2024
# Contact: yifan.tong@mail.utoronto.ca
# License: MIT



#### Workspace setup ####
library(tidyverse)


#### Test data ####

# read data 
data <- read_csv("outputs/data/analysis_data.csv")

# test name match for variables of interest, expect TRUE
"date" %in% colnames(data) &
"newly_identified" %in% colnames(data) &
"actively_homeless" %in% colnames(data) &
"gender_male" %in% colnames(data) &
"gender_female" %in% colnames(data) &
"moved_to_housing" %in% colnames(data) & 
  
# test no missing value, expect FALSE
any(is.na(simulated))

# test variables that are count are integer and non-negative
sapply(data[,c(-1,-2,-8)], class)
sapply(simulated[,c(-1,-2,-8)], function(x) all(x >= 0))

# test year is consistent with date, expect TRUE
all(year(simulated$date) == simulated$Year)
