data <- read.delim("datos/data/LA MOLINA 2014 POTATO WUE (FB) - fb.tsv")

# importarxlsx ------------------------------------------------------------

library(openxlsx)
  dtxlsx <- openxlsx::read.xlsx(xlsxFile = "datos/data/LA MOLINA 2014 POTATO WUE (FB) (1).xlsx")


# importar Rstudio --------------------------------------------------------



#importar de gogle sheets
library(int)#autentificar con gogle
library(googlesheets4)
url <- "https://docs.google.com/spreadsheets/d/15r7ZwcZZHbEgltlF6gSFvCTFA-CFzVBWwg3mFlRyKPs/edit?gid=172957346#gid=172957346"
gs <- as_sheets_id(url)
fb <- googlesheets4::range_read(ss=gs, sheet = "fb")
