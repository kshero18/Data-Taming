#Introduction to qplot
 
?qplot

#install.packages("ggplot2")

library(ggplot2)

qplot(data=stats,x=Internet.users)
qplot(data=stats,x=Internet.users,y= Country.Name)
qplot(data=stats,x=Income.Group,y=Birth.rate)
qplot(data=stats,x=Income.Group,y=Birth.rate,size=I(3),col=I("red"))
qplot(data=stats,x=Income.Group,y=Birth.rate,geom = 'boxplot')
