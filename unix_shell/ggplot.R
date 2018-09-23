#set working directory
setwd("~/Desktop/SWC_fall2018")

#install ggplot2
install.packages("ggplot2")

#load dependencies
library(ggplot2)

#read our input data
gapminder <- read.table(file = "unix_shell/Data/gapminder.txt", header = TRUE)

#make first ggplot2
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) + geom_point()

#challenge 1
ggplot(data = gapminder, aes(x = year, y = lifeExp)) + geom_point()

#lets change the color of our plots
ggplot(data = gapminder, aes(x = year, y = lifeExp, by = country, color = continent)) + geom_line(aes(color = continent )) + geom_point()

#chanllenge 2: reverse the order of the line/plot layers
ggplot(data = gapminder, aes(x = year, y = lifeExp, by = country, color = continent)) + geom_line(aes(color = continent )) + geom_point()

ggplot(data = gapminder, aes(x = year, y = lifeExp, by = country, color = continent)) + geom_point() + geom_line(aes(color = continent )) 

#statistics
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, color = continent)) + 
  geom_point() + scale_x_log10() + geom_smooth(method = "lm", size = 1.5)

#challenge: modify the size and color of the points of the previous example
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, color = continent)) + 
  geom_point(size = 1, shape = "triangle") + scale_x_log10() + geom_smooth(method = "lm", size = 1.5)

starts.with <- substr(x = gapminder$country, start = 1, stop = 1)
az.countries <- gapminder[starts.with %in% c("A", "Z"),]

ggplot(data = az.countries, aes(x = year, y = lifeExp, color = continent)) +
  geom_line() + facet_wrap(~ country)

#change text labels on the plots
ggplot(data = az.countries, aes(x = year, y = lifeExp, color = continent)) +
  geom_line() + facet_wrap(~country) +
  labs(x = "Year", y = "Life Expentancy", title = "Figure 1", color = "Continent") +
  theme(axis.text.x = element_blank(), axis.ticks.x = element_blank())

#Challenge 5: make density plot of GDP per capita, filled by continent
ggplot(data = gapminder, aes(x = gdpPercap, fill = continent)) + geom_density(alpha = 0.6) + scale_x_log10()
