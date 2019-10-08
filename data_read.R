# data reading packages 

library(haven)

# SAS
read_sas("mtcars.sas7bdat")
write_sas(mtcars, "mtcars.sas7bdat")

# SPSS
read_sav("mtcars.sav")
write_sav(mtcars, "mtcars.sav")

# Stata
read_dta("mtcars.dta")
write_dta(mtcars, "mtcars.dta")
