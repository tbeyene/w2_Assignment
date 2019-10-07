# Github and R second project 
# Coding and mapping Assignment 1 

import pandas as pd
library(haven)

# creating the data frame
df = read_dta("IAHR52FL.dta")
print(df)
head(df)

# Filtering variables between "hhid" and "shstruc". 

# finding the column number for "shstruc" and "hhid =1"

print(which(colnames(df) =="shstruc"))
print(which(colnames(df) =="hhid"))

#filtered_df<-df[, setdiff(names(df),c("name1":"name2") ]

newdata = df[c(1:196)] 
print(newdata)

ggplot(data = newdata, mapping = aes(x = hhid, y = shstruc)) + 
  geom_point(mapping = aes(color = hhid)) 
