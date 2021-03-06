## deja vu from yesterday!
library(fs)
library(tidyverse)
library(here)

## create a data frame of your installed packages
ipt <- installed.packages() %>%
  as_tibble()
## keep the variables
##   * Package
##   * LibPath
##   * Version
##   * Priority
##   * Built
ipt2 <- ipt %>% select(Package, LibPath, Version, Priority, Built)
## write it to data/installed-packages.csv
write.csv(ipt2, file=here("data", "installed-packages.csv"))
## YES overwrite the file that is there now
## that came from me (Jenny)
## it an example of what yours should look like

## when this script works, stage & commit it and the csv file
## PUSH!
