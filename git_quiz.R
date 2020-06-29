library(tidyverse)

library(Lahman)
data(mpg)

mpg %>% 
  group_by(manufacturer) %>% 
  summarise(mean_cty = mean(cty))
