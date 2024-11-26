#tidyverse library
library(tidyverse)

#Dataset
df <- read.csv("vw.csv")

#Dependent variable
x <- df$price

#Independent variable
y<- df$transmission

#Dependent variable has 3 categories
pairwise.wilcox.test(x,y)

