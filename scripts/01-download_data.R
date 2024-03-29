#### Preamble ####
# Purpose: Downloads and saves the data from CCES website directly
# Author: Rahul Gopeesingh
# Date: 16 March 2024
# Contact: rahul.gopeesingh@mail.utoronto.ca


#### Workspace setup ####
library(opendatatoronto)
library(dataverse)
library(tidyverse)


#### Download data ####
ces2022 <-
  get_dataframe_by_name(
    filename = "CCES22_Common_OUTPUT_vv_topost.csv",
    dataset = "10.7910/DVN/PR4L8P",
    server = "dataverse.harvard.edu",
    .f = read_csv
  ) |>
  select(votereg, presvote20post, gender4, educ)




#### Save data ####
write_csv(ces2022, "data/raw_data/ces2022.csv")

