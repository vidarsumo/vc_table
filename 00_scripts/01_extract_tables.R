

# 1.0 Setup ----
library(tidyverse)
library(pdftools)
library(tabulizer)


# 2.0 Import data

# 2.1 Tabulizer ----
table_tablulizer_method_1 <- extract_tables("00_data/vc_tables.pdf", method = "decide", output = "data.frame")
table_tablulizer_method_2 <- extract_tables("00_data/vc_tables.pdf", method = "lattice", output = "data.frame")
table_tablulizer_method_3 <- extract_tables("00_data/vc_tables.pdf", method = "stream", output = "data.frame")


# 2.2 PDF tools
#table_pdf_tools <- pdf_text("00_data/vc_tables.pdf")



# 3.0 Extract data ----

exctract_fund_type <- function(x) {

}

test_table <- table_tablulizer_method_3 %>%
    map(as_tibble) %>%
    map(~ .x %>% pull(FUND) %>% pluck(1))


test_table[[1]]
