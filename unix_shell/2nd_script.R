#2nd script
#This script computes the average GDP for a country using

#clear away old variables
rm(list = ls())

#location of the data
filename <- 'Data/gapminder.txt'

#read the data file
gapminder <- read.table(filename, header = TRUE)

getAverageGdpPerCapita <- function(country, gapminder){
  # select countryw here you want to parse out GDP
  selectedCountryData <- gapminder[gapminder$country == country, "gdpPercap"]
  mean(selectedCountryData)
}

gdpUSA <- getAverageGdpPerCapita("United_States", gapminder)
gdpUSA

gdpCanada <- getAverageGdpPerCapita("Canada", gapminder)
gdpMexico <- getAverageGdpPerCapita("Mexico", gapminder)

print(paste("GDP per capita of USA is:", gdpUSA))
print(paste("GDP per capita of Canada is:", gdpCanada))
print(paste("GDP per capita of Mexico is:", gdpMexico))
