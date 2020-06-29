library(tidyverse)

library(Lahman)

data("Batting")

Batting %>% 
  group_by(playerID) %>% 
  summarise(HR = sum(HR)) %>% 
  arrange(-HR) %>% 
  head(10)

Batting %>% 
  group_by(yearID,playerID) %>% 
  summarise(HR = sum(HR)) %>% 
  arrange(-yearID,-HR) %>% 
  head(10)