#---------------------Asthetics

library(ggplot2)

#aes() how your data is mapped
ggplot(data = movies, aes(x=CriticRating,y=AudienceRating)) #right now ggplot doesn't know what to do

#add geometry
ggplot(data = movies, aes(x=CriticRating,y=AudienceRating)) + geom_point()

#add color

ggplot(data = movies, aes(x=CriticRating,y=AudienceRating, color=Genre)) + geom_point()

#add size

ggplot(data = movies, aes(x=CriticRating,y=AudienceRating, color=Genre, size=Genre)) + geom_point()

#add size - better way

ggplot(data = movies, aes(x=CriticRating,y=AudienceRating, color=Genre, size=BudgetMillions)) + geom_point()

#>>> This is #1 (we will improve it)