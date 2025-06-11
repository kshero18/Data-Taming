
# Visualizing what we need

qplot(data=stats, x= Internet.users, y= Birth.rate)

qplot(data=stats, x= Internet.users, y= Birth.rate, size = I(4))

qplot(data=stats, x= Internet.users, y= Birth.rate, size = I(4),colour= I("red"))


#You are employed as a Data Scientist by the World Bank and you are working on a project to analyse the World’s demographic trends.

#You are required to produce a scatterplot illustrating Birth Rate and Internet Usage statistics by Country.

#The scatterplot needs to also be categorised by Countries’ Income Groups.

qplot(data=stats, x= Internet.users, y= Birth.rate, size = I(4),colour=Income.Group)

