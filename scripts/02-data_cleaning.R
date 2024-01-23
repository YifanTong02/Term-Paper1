#### Preamble ####
# Purpose: Cleans the raw count data
# Author: Yifan Tong
# Date: January 23, 2024
# Contact: yifan.tong@mail.utoronto.ca
# License: MIT

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
# data <- read_csv("inputs/data/unedited_data.csv")
data <- read_csv("unedited_data.csv")

# convert date type from character to date
data$`date(mmm-yy)` <- my(data$`date(mmm-yy)`)

# rename date
data <- data %>% 
  rename(date = `date(mmm-yy)`) %>% # rename column
  # select columns
  select(date, population_group, newly_identified, actively_homeless, 
         gender_male, gender_female, moved_to_housing) %>%
  # only for the total shelter population select
  filter(population_group == "All Population")

# extract year
data$Year <- format(data$date, "%Y")

#### Save data ####
#write_csv(data, "outputs/data/analysis_data.csv")
write_csv(data, "analysis_data.csv")
