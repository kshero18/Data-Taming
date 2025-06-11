#------------Statistical Transformations

?geom_smooth

u <- ggplot(data = movies, aes(x= CriticRating, y= AudienceRating,color=Genre))
u + geom_point() + geom_smooth()

u + geom_point() + geom_smooth(fill=NA)


#boxplots

u <- ggplot(data = movies,aes(x= Genre, y=AudienceRating,color = Genre))
u + geom_boxplot()

u + geom_boxplot(size=1.2)

u + geom_boxplot(size=1.2) + geom_point()

#tip/hack :

u + geom_boxplot(size=1.2) + geom_jitter() #good combination

#another way :
u + geom_jitter() + geom_boxplot(size=1.2, alpha=0.5) #chart 6

##Challenge 

challenge <- ggplot(data = movies,aes(x= Genre, y=CriticRating,color = Genre))

challenge + geom_jitter() + geom_boxplot(size=1.2,alpha=0.5)
