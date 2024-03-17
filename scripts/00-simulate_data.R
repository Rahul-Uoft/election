#### Preamble ####
# Purpose: Simulates a data set to be tested.
# Author: Rahul Gopeesingh
# Date: 16 March 2024
# Contact: rahul.gopeesingh@mail.utoronto.ca



#### Workspace setup ####
library(tidyverse)

#### Simulate data ####
set.seed(850)
data_simulated <-
  tibble(
    votereg= c(rep("1", times = 100)),
    presidentvote20post = rbinom(100,1,0.5),
    gender4 = rbinom(100,1,0.5),
    educ = sample(1:6, 100, replace=TRUE)
    
  )
data_simulated

write_csv( 
  x = data_simulated,
  file = "data/raw_data/simulated_dataset_voting.csv"
)

#tests for simulated dataset
data_simulated$votereg |>
  min() == 1

data_simulated$presidentvote20post |>
  max() <= 1
data_simulated$educ|>
  min() >= 1
data_simulated$educ|>
  max() <= 6

