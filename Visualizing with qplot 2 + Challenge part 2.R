#You have received an urgent update from your manager.

#You are required to produce a second scatterplot also illustrating Birth Rate and

#Internet Usage statistics by Country.

#However, this time the scatterplot needs to be categorised by Countries’ Regions.

#Additional data has been supplied in the form of R vectors.



########################Visualizing with new Split

library(ggplot2)

qplot(merged$Birth.rate,stats$Internet.users,xlab = "Birth.rate", ylab = "Internet.users") #another way to visualize scatter plot

qplot(data = merged[1:10,], x=Birth.rate, y = Internet.users,xlab = "Birth.rate", ylab = "Internet.users") #first 10 countries


qplot(data = merged, x=Internet.users, y = Birth.rate, xlab = "Birth.rate", ylab = "Internet.users", colour = Region )

#1. Shapes of points

qplot(data = merged, x=Internet.users, y = Birth.rate, xlab = "Birth.rate", ylab = "Internet.users", colour = Region, size = I(5), shape = I(17) )

#2. Transparency 
qplot(data = merged, x=Internet.users, y = Birth.rate, xlab = "Birth.rate", ylab = "Internet.users", colour = Region, size = I(5), shape = I(19),alpha=I(0.6) )

#3. Title

qplot(data = merged, x=Internet.users, y = Birth.rate, xlab = "Birth.rate", ylab = "Internet.users", colour = Region, size = I(5), shape = I(19),alpha=I(0.6),main = "Birth Rate vs Internet Users" )
