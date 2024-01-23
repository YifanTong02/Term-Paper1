#### Preamble ####
# Purpose: Downloads and saves the data from https://open.toronto.ca/dataset/toronto-shelter-system-flow/
# Author: Yifan Tong
# Date: January 23, 2024
# Contact: yifan.tong@mail.utoronto.ca
# License: MIT


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)


#### Download data ####
pks <- search_packages("shelter system") # get packages
resource <- list_package_resources(pks[1,])# get resources

the_raw_data <- resource[2,] %>%
  get_resource()

#### Save data ####
# [...UPDATE THIS...]
# change the_raw_data to whatever name you assigned when you downloaded it.
write_csv(the_raw_data, "inputs/data/unedited_data.csv") 

         