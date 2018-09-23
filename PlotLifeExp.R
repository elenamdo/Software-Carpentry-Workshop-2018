#PlotlifeExp.R script

myDataFull <- read.table("Data/gapminder.txt", header=TRUE)

#Subset Canada only
Canada <- myDataFull[myDataFull$country=="Canada",]

#Plot
plot(Canada$year, Canada$lifeExp, col="blue", type="l")

#Save the graph
png("Canada.png") #Open Canada.png file

#Plot
plot(Canada$year, Canada$lifeExp, col="blue", type="l")
 
#Close Device
dev.off()
