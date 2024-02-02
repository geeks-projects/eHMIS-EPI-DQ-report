library(readr)
data <- read_csv("./data/dhis2-data2.csv")


data |> 
  write_rds("dhis2-data-cleaned.rds")
