#Let’s say a call center receives on average 𝜆=5 calls per hour.
#What is the probability that #exactly k=3 
#calls come in during the next hour?

ppois(q=3,lambda = 5) - ppois( q= 2, lambda = 5)

#how to know exact probability , using dpois()??

dpois(x=3, lambda = 5)

n = seq(0,5)
n
dpois( x= n, lambda = 5)

barplot(dpois( x= n, lambda = 5))
#10 calls per hour average, probability of 8 or less calls
library(visualize)
visualize.pois(stat=8, lambda = 10, section = "lower")
visualize.pois(stat=c(2,4), lambda = 5, section = "tails")
grid()
