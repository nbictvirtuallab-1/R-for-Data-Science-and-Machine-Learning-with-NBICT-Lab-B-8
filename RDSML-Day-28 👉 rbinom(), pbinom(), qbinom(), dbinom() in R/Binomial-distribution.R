#Explaining rbinom()
#rbinom(n,size,prob) generate random numbers from a binomial distribution
# n = numbers of random values to generate
#size = number of trials in each binomial experiment
#prob = probability of success in each trial

rbinom(n=10, size=1, prob= .5)
#here :
# 10 = number of random values to generate(n = 10)
# 1 = number of trials in each experiment(size =1)
#.5 = probability of success of each trial(prob = .5)

rbinom(n=15, size = 10, prob = .5)

#Explaining pbinom()

#pbinom() gives the cumulative probability of getting 
#q or fewer successes in a binomial distribution 
# syntax = pbinom(q, size, prob )
#here,
# q = the number of successes 
# size = number of trials 
# prob = probability of success in each trial

# ekta coin ke 10 bar flip kora hole minimum 5 bar success 
#asar probability koto

pbinom( q = 5, size = 10, prob = .5)

# the result means there's about a 62.3 % chance of getting 5 or
#fewer successes in 10 trials 
#e.g. getting 5 or fewer heads in 10 fair coin tosses

# you toss a coin 5 times. what is the probability of getting 
#exactly 3 heads?

pbinom( q = 3, size = 5, prob = 0.5) - pbinom( q = 2, size = 5, prob = 0.5)

# explaining qbinom()
# what is the smallest number of successes x in 10 trials 
#(with 50 % successs chance) such that the probability of 
#getting x or fewer success is at least 30% ?

qbinom(p = .30, size = 10, prob = .5 )

# p = 0.3  cumulative probability 30 %
# size = 10 number of trials e.g. 10 coin tosses
# prob = 0.5 probability of success 

# explaining dbinom()
# calculating the probability of getting exact number of success

dbinom(x = 3, size = 5, prob = .5)
dbinom(x = 3, size = 10, prob = .25)
#dbinom(x, size, prob)
#x = 3 , number of successes you want (k in chat gpt file)
# size = number of independent trials
# prob = probability of success in each trial
