movieshw <- read.csv("D:\\R scripts\\R Programming A-Z™ R For Data Science With Real Exercises\\Section 6 Advanced visualization with GGPLOT2\\P2-Section6-Homework-Data\\Section6-Homework-Data.csv")

library(ggplot2)
library(grid)
library(ggplot2)
library(extrafont) 
#font_import()
loadfonts(device = "win")

ggplot(data=movieshw, aes(x=Day.of.Week)) + geom_bar()

head(movieshw)
tail(movieshw)

#Renaming

#colnames(movieshw) <- c("Day", "Director", "Genre", "Title", "Date", "Studio", "AdjustedGross $M", "BudgetMillions", "Gross $M","IMDb.Rating",
      #"MovieLens.Rating", "Overseas $M", "Overseas%", "Profit", "Profit %", "RuntimeMinutes", 
       #                "USMillions", "GrossUS")
str(movieshw)

#factorizing
#Day <- as.factor(movieshw$Day)
#movieshw$Day <- Day
#Director <- as.factor(movieshw$Director)
#movieshw$Director <- Director
#Genre <- as.factor(movieshw$Genre)
#movieshw$Genre <- Genre
#Studio <- as.factor(movieshw$Studio)
#movieshw$Studio <- Studio
#IMDb.Rating <- as.factor(movieshw$IMDb.Rating)
#movieshw$IMDb.Rating <- IMDb.Rating
#MovieLens.Rating <- as.factor(movieshw$MovieLens.Rating)
#movieshw$MovieLens.Rating <- MovieLens.Rating

#Filtering Genre

filter1 <- (movieshw$Genre == "action" | movieshw$Genre == "adventure" | movieshw$Genre == "animation" | movieshw$Genre == "comedy" | movieshw$Genre == "drama")

filter2 <- (movieshw$Studio == "Buena Vista Studios" | movieshw$Studio == "Fox" | movieshw$Studio == "Paramount Pictures" | movieshw$Studio == "Sony" | movieshw$Studio == "Universal" | movieshw$Studio == "WB")

#Adding the filters 

movieshw2 <- movieshw[filter1 & filter2,]
#Plotting Genre vs Gross%US

s <- ggplot(data = movieshw2, aes(x=Genre, y= Gross...US))

s + geom_point()


s+ geom_boxplot() + geom_jitter()


s + geom_jitter(aes(size=Budget...mill., color = Studio)) + 
  geom_boxplot(alpha = 0.7)


t <- s + geom_jitter(aes(size=Budget...mill., color = Studio)) + 
  geom_boxplot(alpha = 0.7, outlier.colour = NA)
t

t <- t + 
  xlab("Genre") + 
  ylab("Gross % US") + 
  ggtitle("Domestic Gross % by Genre") 
t

t <- t + theme(
  text = element_text(family="Comic Sans MS"),
        
  axis.title.x = element_text(color="Blue", size = 20),
  axis.title.y = element_text(color= "Blue", size = 20),
        
  axis.text.x = element_text(size = 10),
  axis.text.y = element_text(size = 10),
        
  plot.title = element_text(color= "Black", size = 20, hjust = 0.5),
  
  legend.title = element_text(size =10),
  
  legend.text = element_text(size= 6),
  )

t

t$labels$size = "Budget $M"
t


