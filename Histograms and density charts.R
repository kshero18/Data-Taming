
#---------------------Histograms and density charts

s <- ggplot(data = movies, aes(x = BudgetMillions))
s + geom_histogram(binwidth = 10)

#add color
s + geom_histogram(binwidth = 10,aes(fill=Genre))

#add border
s + geom_histogram(binwidth = 10,aes(fill=Genre),color="Black")

#>>> 3 (we will improve it)

#sometimes you may need density charts : 
s + geom_density(aes(fill=Genre))
#make it clear
s + geom_density(aes(fill=Genre),position = "stack")
