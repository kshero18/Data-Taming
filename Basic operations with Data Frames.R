

#Basic operations with DF (Data Frame)

#subsetting
stats[1:10,]

stats
stats[3:9,]
stats[c(4,100),]
#Remeber how the  [] work :
stats[1,]
is.data.frame(stats[1,]) #no need for drop =F

stats[,1]
is.data.frame(stats[,1])

stats[,1,drop=F]
is.data.frame(stats[,1,drop=F])

#multiply columns
head(stats)
stats$Birth.rate * stats$Internet.users
stats$Birth.rate + stats$Internet.users

#add column
head(stats)
stats$MyCalc <- stats$Birth.rate * stats$Internet.users

#test of knowledge
stats$xyz <- 1:5 #recycling vector
head(stats,n=10)
stats$xyz <- 1:4

#remove columns
stats$MyCalc <- NULL
stats$xyz <- NULL
head(stats)
