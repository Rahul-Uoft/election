#### Preamble ####
# Purpose: Test the data to ensure everything is working
# Author: Rahul Gopeesingh
# Date: 16 March 2024
# Contact: rahul.gopeesingh@mail.utoronto.ca




#### Workspace setup ####
library(tidyverse)


data_used <- read_csv("data/raw_data/simulated_dataset_voting.csv")

#### Test data ####
#tests for actual dataset
data_used$votereg |>
  min() >= 0

data_used$presidentvote20post |>
  min() >= 0
data_used$educ|>
  min() >= 1
data_simulated$educ|>
  max() <= 6

