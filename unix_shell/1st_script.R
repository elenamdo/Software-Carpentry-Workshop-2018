#1st script

#location of the data
filename <- 'Data/gapminder.txt'

#read the data file
gapminder <- read.table(filename, header = TRUE)

#select the rows where the country Albania is and store it
albaniaData <- gapminder[gapminder$country=="Albania",]

#select the colum for GDP from albaniaData
albaniaGdp <- albaniaData$gdpPercap

#compute the average GDP for the country over the years
albaniaAverageGdp <- mean(albaniaGdp)
print(paste("The average gdp for Albania is:", albaniaAverageGdp))
