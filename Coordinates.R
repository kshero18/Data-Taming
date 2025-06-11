#----------------------Coordinates layer

#Today:
#Limits
#Zoom

m <- ggplot(data = movies, aes(x =CriticRating, y= AudienceRating, size= BudgetMillions,color= Genre))
m + geom_point()


#Best ones : first quadrant

m + geom_point() + xlim(50,100) + ylim(50,100) #zoomed in

#won't work well always

n <- ggplot(data = movies, aes(x = BudgetMillions))
n + geom_histogram(binwidth = 10, aes(fill= Genre), color= "Black") + 
  ylim(0,50)

#Instead - Zoom : 

n + geom_histogram(binwidth = 10, aes(fill= Genre), color= "Black") + 
  coord_cartesian(ylim = c(0,50))

#improve #1 : 
w + geom_point(aes(size=BudgetMillions)) + facet_grid(Genre~Year) + geom_smooth() +
  coord_cartesian(ylim = c(0,100))
