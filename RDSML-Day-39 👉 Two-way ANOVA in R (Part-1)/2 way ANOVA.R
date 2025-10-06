# Installing Packages 

#install.packages(c("tidyverse", "car", "emmeans", "effectsize", "performance", "broom", "kableExtra"))

library(tidyverse)

# Importing the dataset

d = read.csv("cropdata.csv")

# Quick Exploratory Descriptive Analysis

summarization = d %>%
  group_by(fert, irr) %>%
  summarise(mean = mean(y), se = sd (y)/ sqrt(n()), .groups = "drop")

# Quick data summary visualization

library(ggplot2)
ggplot(summarization, aes(irr , mean , group = fert)) +
  geom_line() +
  geom_point(size = 2) +
  geom_errorbar(aes(ymin = mean - se, ymax = mean + se), width = 0.2) +
  facet_wrap(~ fert , nrow = 1) +
  labs(x ="Irrigation", y = "Mean Yield",
       title = "Interaction of Fertilizer vs Irrigation") +
  theme_classic(base_size = 12)
