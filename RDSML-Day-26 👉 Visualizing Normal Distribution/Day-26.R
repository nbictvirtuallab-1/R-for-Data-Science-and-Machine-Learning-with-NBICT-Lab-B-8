#installing the visualize package

install.packages("visualize")
library(visualize)
#visualize normal distribution

pnorm(-1.96)
visualize.norm(stat =-1.96)
visualize.norm(stat =1.96, section = "upper")

#stat na lekhleo hobe
#right tail e nite section = "upper" likhbo with +ve value

visualize.norm(stat = c(-1.96, 1.96), section = "bounded")
visualize.norm(stat = c(-1.96, 1.96), section = "tails")
visualize.norm(stat = c(-1, 1), section = "bounded")
visualize.norm(stat = c(-3, 3), section = "bounded")
visualize.norm(stat = c(-3, 3), section = "tails")
1 - pnorm(2)
visualize.norm(stat = 77, mu = 75, sd = 1, section = "upper")
visualize.norm(stat = 77, mu = 75, sd = 1, section = "lower")
1-pnorm(77, mean = 75, sd = 1)
