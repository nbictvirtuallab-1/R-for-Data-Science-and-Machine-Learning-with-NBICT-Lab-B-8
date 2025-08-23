#rnorm function
x = rnorm(10000, mean = 0, sd = 1)
mean(x)
sd(x)

y = rnorm(100, mean = 100, sd = 3)
mean(y)
sd(y)

#pnorm function

# At z = 0 , the value of probability is 0.5
# z er man koto hole probability joto asbe tar jonno pnorm use kori
#pnorm er vitore z value dei
pnorm(0)
pnorm(-1.96)
pnorm(-1.64)

#Use of qnorm function, eta pnorm er ulta
# probability value dile z value return korbe
qnorm(0.5)
qnorm(0.0249979)

#use of function dnorm()
#dnorm y axis er value daye
#Y axis value for z = 0
dnorm(0)
#Let's use dnorm to draw the normal distribution

zvalues = seq(-4.0 , 4.0 , by = 0.1)
dvalues = dnorm(zvalues)

plot(zvalues , dvalues)
