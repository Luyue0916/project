apr14 <- read.csv("uber-raw-data-apr14.csv")


may14 <- read.csv("uber-raw-data-may14.csv")
jun14 <- read.csv("uber-raw-data-jun14.csv")
jul14 <- read.csv("uber-raw-data-jul14.csv")
aug14 <- read.csv("uber-raw-data-aug14.csv")
sep14 <- read.csv("uber-raw-data-sep14.csv")
#bind all data files into one
library(dplyr)
data14 <- bind_rows(apr14,may14,jun14,jul14,aug14,sep14)
summary(data14)
head(data14)

#data preparation: cleaning and rearranging
# check the sparsity of the dataset and check the amount of missing data
library(VIM) # Visualization and imputation of missing values
#aggr plots the amount of missing values in each column
aggr(data14)
