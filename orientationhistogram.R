library(tidyverse)
library(ggplot2)
library(dplyr)


##rename dataframe
survey_ram <- data.frame(survey$RAM..in.GB.)
ggplot(survey, aes(RAM..in.GB., fill=as.factor(RAM..in.GB.))) + 
  geom_histogram()+
  scale_x_continuous(breaks=seq(0,64,4))+
  scale_y_continuous(breaks=seq(0,40,2))+
  xlab("Different Values of RAM (in GB)")+
  ylab("Count")+
  ggtitle("Total Number of Different RAM (in GB)")+
  labs(fill ="Different Number of RAM (in GB)")
