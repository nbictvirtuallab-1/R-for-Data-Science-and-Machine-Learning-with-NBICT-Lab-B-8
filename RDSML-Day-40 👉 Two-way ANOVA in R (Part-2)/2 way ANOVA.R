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

# Fit the model
# yield (y) fert ar irr er sathe kivabe related

m = aov(y ~ fert + irr + fert*irr, data = d)

summary(m)

# Assumptions visual checks
# par mane partition
par(mfrow=c(2,2))
plot(m)
par(mfrow=c(1,1))


# Shaoiro-Wilk on residuals (Normality Test)

res = residuals(m)

shapiro.test(res)

# Levene's test for equal variances

library(car)

car :: leveneTest(y~fert*irr, data = d, center = median )

# p>.05 hole homogeneity of variance maintain hobe, null hyp accepted,
#when p is high,null must fly,means accepted

# Interaction contrasts (simple effects) : 
#effect of fert at each level of irr

library(emmeans)

contrast(emmeans(m, ~ fert | irr), method = "pairwise", adjust = "tukey")

#effect of irr at each level of fert

library(emmeans)

contrast(emmeans(m, ~ irr | fert), method = "pairwise", adjust = "tukey")
