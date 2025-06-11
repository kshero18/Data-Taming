#You have been supplied data for two more additional in-game statistics:
#• Free Throws
#• Free Throw Attempts

#You need to create three plots that portray the following insights:
#• Free Throw Attempts per game
#• Accuracy of Free Throws
#• Player playing style (2 vs 3 points preference) excluding Free Throws*
#  *Each Free Throw is worth 1 point
#The data has been supplied in the form of vectors. You will have to create the two matrices before you proceed with the analysis


#################################################################

##Free Throw Attempts per game
plot1 = matplot(t(FreeThrowAttempts/Games),type = "b",pch = 15:18, col = c(1:4,6))
legend("bottomleft",inset = 0.001,legend = Players,pch = 15:18, col = c(1:4,6),horiz = F)

##Accuracy of Free Throws
plot2 = matplot(t(FreeThrows/FreeThrowAttempts),type = "b",pch = 15:18, col = c(1:4,6))
legend("bottomleft",inset = 0.001,legend = Players,pch = 15:18, col = c(1:4,6),horiz = F)

##Player playing style (2 vs 3 points preference) excluding Free Throws*
plot3 = matplot(t((Points -FreeThrows)/FieldGoals),type = "b",pch = 15:18, col = c(1:4,6))
legend("bottomleft",inset = 0.001,legend = Players,pch = 15:18, col = c(1:4,6),horiz = F)
