#------------------Using Facets

v <- ggplot(data = movies, aes(x=BudgetMillions))
v + geom_histogram(binwidth = 10, aes(fill=Genre), color="Black")

#v + geom_bar(width = 10,aes(fill=Genre))

#facets 
v + geom_histogram(binwidth = 10, aes(fill=Genre), color="Black") + 
  facet_grid(Genre~.,scales = "free")

#scatterplots:

w <- ggplot(data = movies, aes(x=CriticRating, y= AudienceRating, color=Genre))
w + geom_point(size=3)

#facets
w + geom_point(size=3) + facet_grid(Genre~.)

w + geom_point(size=3) + facet_grid(.~Year)

w + geom_point(size=3) + facet_grid(Genre~Year)

#add smoother

w + geom_point(size=3) + facet_grid(Genre~Year) + geom_smooth()


w + geom_point(aes(size=BudgetMillions)) + facet_grid(Genre~Year) + geom_smooth()

#>>> 1 (but still will improve)