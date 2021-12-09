 # Load libraries and packages
library(dplyr)

#Install gapminder
install.packages("gapminder")

#Load gapminder
library(gapminder)

#Install ggplot
install.packages("ggplot2")

#Install tidyverse
install.packages("tidyverse")

#Load ggplot
library(ggplot2)

#Load tidyverse
library(tidyverse)

#Examine data
data(gapminder)

#Remove "Kuwait" from the gapminder dataset
help(filter)
gapminder_no_kuwait <- filter(gapminder,  country != "Kuwait")
View(gapminder_no_kuwait)

#Create Plot 1
gapminder > mutate(pop = pop/100000)
ggplot(gapminder_no_kuwait, aes(x = lifeExp, y = gdpPercap, size = pop/100000, color = continent)) + geom_point() +
  scale_y_continuous(trans = "sqrt") + facet_wrap(~year,nrow=1) + theme_bw() + 
  labs(color = "Continent", x = "Life Expectancy", y = "GDP Per Capita", size = "Population (100k)", 
       title = "GDP Per Capita x Life Expectancy - Plot 1")

#Examine data
data(gapminder)
str(gapminder)

#Save the plot
ggsave("Plot1.png", width = 15, height = 5)

#Create Plot 2
continent_gap <- gapminder %>% group_by(continent, year)

#Summarize
gapminder_continent <- continent_gap %>% 
  summarize(gdpPercapweighted = weighted.mean(x = gdpPercap, w = pop), pop = sum(as.numeric(pop)))

ggplot(gapminder_continent, aes(x = year, y = gdpPercapweighted, size = pop/100000, color = continent)) + geom_point() +
  geom_line() + 
  geom_line(data = gapminder_continent, mapping = aes(year, gdpPercapweighted)) + 
  geom_point(data = gapminder_continent, mapping = aes(year, gdpPercapweighted)) +
  facet_wrap(~year,nrow=1) + theme_bw() + 
  labs(color = "Continent", x = "Year", y = "GDP Per Capita", size = "Population (100k)",
  title = "GDP Per Capita x Year - Plot 2")

#Save the plot
ggsave("Plot2.png", width = 15, height = 5)

#Case Study 3
