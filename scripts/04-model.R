#### Preamble ####
# Purpose: Models the data in a logistic regression to be analyzed in paper
# Author: Rahul Gopeesingh
# Date: 16 March 2024
# Contact: rahul.gopeesingh@mail.utoronto.ca




#### Workspace setup ####
library(tidyverse)
library(rstanarm)
library(arrow)

#### Read data ####
set.seed(853)
analysis_data <- read_parquet("data/analysis_data/ces2022clean.parquet")

### Model data ####
first_model <-
  stan_glm(
    formula = voted_for ~ gender + education,
    data = analysis_data,
    family = binomial(link = "logit"),
    prior = normal(location = 0, scale = 2.5, autoscale = TRUE),
    prior_intercept = normal(location = 0, scale = 2.5, autoscale = TRUE),
    prior_aux = exponential(rate = 1, autoscale = TRUE),
    seed = 853
  )


#### Save model ####
saveRDS(
  first_model,
  file = "models/first_model2022.rds"
)


