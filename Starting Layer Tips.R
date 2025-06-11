
#--------------------Starting layer tips

t <- ggplot(data = movies, aes(x = AudienceRating))
t + geom_histogram(binwidth = 10,fill="White", color = "Blue")

#another way:

t <- ggplot(data = movies)
t + geom_histogram(binwidth = 10, aes(x=AudienceRating),fill="White", color = "Blue")

#>> 4 chart 
t + geom_histogram(binwidth = 10, aes(x=CriticRating),fill="White", color = "Blue")

#>> 5 chart


#one more way:
t <- ggplot()
t + geom_histogram(data = movies, binwidth = 10, aes(x=CriticRating),fill="White", color = "Blue")
