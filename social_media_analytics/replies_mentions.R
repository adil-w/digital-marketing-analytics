library(tidyverse)
library(rtweet)
library(kableExtra)
library(lubridate)

load("/Users/Adil/Desktop/Data Science Projects/R/Social Media Analytics/Delta_social_media.rdata")

View(mentions)
View(replies)

# Average number of daily replies
replies %>% mutate(day = day(created_at)) %>% 
  group_by(day) %>% count() -> a1

a1[nrow(a1)+1,] = c("Average", round(colMeans(a1[,2])))
kable(a1)

# Average number of daily mentions
mentions %>% mutate(day = day(created_at)) %>% 
  group_by(day) %>% count() -> b1

b1[nrow(b1)+1,] = c("Average", round(colMeans(b1[,2])))
kable(b1)
