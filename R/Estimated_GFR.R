library(transplantr)
library(dplyr)

results2 <- results %>%
  mutate(eGFR = ckd_epi(creat = Creatinine, age = Age, sex = Sex, eth = Ethnicity))
