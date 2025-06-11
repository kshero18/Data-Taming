
#Merging Data Frames

head(stats)
head(mydf)


#merge.data.frame(stats,mydf,by=intersect(names(Country.Name),names(Country)))

merged <- merge(stats,mydf, by.x="Country.Code",by.y = "Code")
head(merged)

merged$Country <- NULL
head(merged)
str(merged)
tail(merged)

