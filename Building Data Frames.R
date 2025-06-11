#You have received an urgent update from your manager.

#You are required to produce a second scatterplot also illustrating Birth Rate and

#Internet Usage statistics by Country.

#However, this time the scatterplot needs to be categorised by Countries’ Regions.

#Additional data has been supplied in the form of R vectors.


### Creating Data Frames
stats

mydf <- data.frame(Countries_2012_Dataset,Codes_2012_Dataset,Regions_2012_Dataset)

#head(mydf)

#colnames(mydf) <- c("Country","Code","Region")

rm(mydf)
qplot(data=)

mydf <- data.frame(Country = Countries_2012_Dataset,Code = Codes_2012_Dataset,Region =Regions_2012_Dataset)
head(mydf)


#append(stats,mydf)
#stats

tail(mydf)
mydf
summary(mydf)

region <- as.factor(mydf$Region)
mydf$Region = region
str(mydf)
