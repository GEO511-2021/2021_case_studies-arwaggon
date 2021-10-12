# Install ggplot2
install.packages("tidyverse")

#Loading the data
library(tidyverse)
dataurl <- "https://data.giss.nasa.gov/tmp/gistemp/STATIONS/tmp_USW00014733_14_0_1/station.txt"

temp <- read_table(dataurl,
                   skip=3, #skip the first line which has column names
                   na="999.90", # tell R that 999.90 means missing in this dataset
                   col_names = c("YEAR","JAN","FEB","MAR", # define column names 
                                 "APR","MAY","JUN","JUL",  
                                 "AUG","SEP","OCT","NOV",  
                                 "DEC","DJF","MAM","JJA",  
                                 "SON","metANN"))

#Analyze the data
View(temp)

#Graph the data 
ggplot(temp, aes(x=YEAR, y=JJA)) + geom_line() + geom_smooth() +
  xlab("Year") + ylab("Months") + ggtitle("Mean Summer Temperatures in Buffalo, NY") 

#Save the data
ggsave("Case_Study_2.png")

#Case Study 2