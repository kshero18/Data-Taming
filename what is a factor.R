getwd()
setwd("D:\\R scripts\\R Programming A-Z™ R For Data Science With Real Exercises\\Section 6 Advanced visualization with GGPLOT2")


getwd()


movies <- read.csv("P2-Movie-Ratings.csv")
head(movies)

#fixing the names up

colnames(movies) <- c("Film","Genre", "CriticRating","AudienceRating","BudgetMillions","Year")
head(movies)
tail(movies)

str(movies)

#factorizing
genre <- as.factor(movies$Genre)
movies$Genre <- genre
film <- as.factor(movies$Film)
movies$Film <- film

summary(movies)

#factorizing year

year.of.release <- as.factor(movies$Year)
movies$Year <- year.of.release

str(movies)

#Or 

factor(movies$Year)
movies$Year <- factor(movies$Year)

str(movies)


