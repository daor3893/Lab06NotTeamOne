library(tidyverse)
library(nycflights13)
flights <- nycflights13::flights
A <- flights %>% 
  filter(!is.na(arr_time), !is.na(dep_time))%>%
  summarise(n=n())
  
B <- flights %>% 
  filter(carrier == "UA", !is.na(arr_time), !is.na(dep_time))%>%
  summarise(n=n())
  
prop = B/A
prop
