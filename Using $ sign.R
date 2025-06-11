

#-------------------using $ sign

stats
head(stats)

stats[3,3]
stats[3,"Birth.rate"]
stats["Angola",3]

stats$Internet.users
stats$Internet.users[2]
stats[,"Internet.users"]
stats[2,4]

#Factors
levels(stats$Income.Group)


country.name <- as.factor(stats$Country.Name)
stats$Country.Name = country.name
country.code <- as.factor(stats$Country.Code)
stats$Country.Code = country.code
income.group <- as.factor(stats$Income.Group)
stats$Income.Group = income.group

levels(stats$Income.Group) #referencing the new data which has been factorized above

rm(internet.users)
rm(birth.rate)
