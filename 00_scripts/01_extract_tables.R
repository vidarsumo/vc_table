

# 1.0 Setup ----
library(tidyverse)
#library(pdftools)
library(tabulizer)


# 2.0 Import data

tables <- extract_tables("00_data/vc_tables.pdf")

view(tables[[2]])
