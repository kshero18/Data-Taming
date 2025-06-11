#--------------------Overriding Aesthetics

q <- ggplot(data = movies, aes(x=CriticRating,y=AudienceRating, color=Genre, size=BudgetMillions))

#add geom layer
q + geom_point()

#overriding aesthetics/aes

#example 1
q + geom_point(aes(size=CriticRating))

#example 2

q + geom_point(aes(color= BudgetMillions))

#q remains the same 
q + geom_point()

#example 3
q + geom_point(aes(x=BudgetMillions)) #still shows x as critic rating label

q + geom_point(aes(x=BudgetMillions)) + xlab("Budget Millions $$$")

#example 4
q + geom_line() + geom_point()

q + geom_line(size=1) + geom_point() #multi layer

