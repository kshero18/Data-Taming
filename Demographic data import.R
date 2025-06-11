

?read.csv()

#Method 1 : Select file manually

stats <- read.csv(file.choose())
stats

#Method 2 : Set WD (Working directory) and Read Data

getwd()
#Windows : 
setwd("D:\\R scripts\\R Programming A-Z™ R For Data Science With Real Exercises")
#MAC:
setwd("/Users/")

stats <- read.csv("P2-Demographic-Data.csv")
stats
rm(stats2)
rm(P2_Demographic_Data)
