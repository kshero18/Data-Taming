


myplot <- function(rows){
  Data <- MinutesPlayed[rows,,drop=F]
  matplot(t(Data),type = "b",pch = 15:18,col = c(1:4,6))
  legend("bottomleft",inset =0.01,legend = Players[rows], col = c(1:4,6),pch = 15:18,horiz=F)
}

myplot()
myplot(2:4)

myplot1 <- function(data,rows=1:10){
  Data <- data[rows,,drop=F]
  matplot(t(Data),type = "b",pch = 15:18,col = c(1:4,6))
  legend("bottomleft",inset =0.01,legend = Players[rows], col = c(1:4,6),pch = 15:18,horiz=F)
}

myplot1(Salary,) #same as myplot1(Salary)
myplot1(MinutesPlayed/Games)
myplot1(MinutesPlayed/Games,3)
