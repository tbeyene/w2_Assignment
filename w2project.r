# Github and R second project 
# Coding and mapping Assignment 1 
# import pandas as pd
# or we can install the developement tools from github
#devtools::install_github("tidyverse/haven")
install.packages("haven")
library(haven)
# install tidyverse packages
install.packages("tidyverse")
library("tidyverse") 
# creating the data frame
data_file = read_dta("IAHR52FL.dta")

# Summary output functions
# content and structure
head(data_file)
str(data_file)
dim(data_file)
nrow(data_file)
ncol(data_file)
nnames(data_file)
rownames(data_file)
# Summary output
summary(data_file)
# Data Wrangling 
# a - subsetting 
data_mod <- select(data_file, var1, var2, var3 , var4)
# or for similar variables with the same start name 
data_mod <- select(data_file, starts_with("var"))
# to choose rows based on specific criteria use filter 
data_row  <- filter(data_file, gender == "male")
# Filtering variables between "hhid" and "shstruc". 
# number of rows to select 
sample_n(data_file, 5) 
# fraction of rows to select 
sample_frac(data_file, .01) 

# filter and select on the same data

tmp_data <- filter(data_file, age > 85)
tmp_sel_data <- select(tmp_data, hhid, gender, race)


# finding the column number for "shstruc" and "hhid =1"

print(which(colnames(df) =="shstruc"))
print(which(colnames(df) =="hhid"))

#filtered_df<-df[, setdiff(names(df),c("name1":"name2") ]

newdata = df[c(1:196)] 
print(newdata)

ggplot(data = newdata, mapping = aes(x = hhid, y = shstruc)) + 
  geom_point(mapping = aes(color = hhid)) 
