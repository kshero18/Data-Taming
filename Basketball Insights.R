

myplot1 <- function(data,rows=1:10){
  Data <- data[rows,,drop=F]
  matplot(t(Data),type = "b",pch = 15:18,col = c(1:4,6))
  legend("bottomleft",inset =0.01,legend = Players[rows], col = c(1:4,6),pch = 15:18,horiz=F)
}

myplot1(Games)


#Salary
myplot1(Salary)
myplot1(Salary/Games)
myplot1(Salary/FieldGoals)

#In-Game Metrics
myplot1(MinutesPlayed)
myplot1(Points)

#In-Game Metrics Normalized
myplot1(FieldGoals/Games)
myplot1(FieldGoals/FieldGoalAttempts)
myplot1(FieldGoalAttempts/Games)
myplot1(Points/Games)

#Interesting Observation
myplot1(MinutesPlayed/Games)
myplot1(Games)

#Time is valuable
myplot1(FieldGoals/MinutesPlayed)

#Player Style
myplot1(Points/FieldGoals)
