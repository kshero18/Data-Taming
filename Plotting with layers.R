#-----------------Plotting with layers

ggplot(data = movies, aes(x=CriticRating,y=AudienceRating, color=Genre, size=BudgetMillions)) + 
  geom_point()

p <- ggplot(data = movies, aes(x=CriticRating,y=AudienceRating, color=Genre, size=BudgetMillions))
p

#point
p + geom_point()

#lines
p + geom_line() 

#multiple layers
p + geom_point() + geom_line()
p + geom_line() + geom_point()

