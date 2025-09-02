setwd("D:\\PS")
getwd()


# part 1
n <- 50
p <- 0.85


# (ii) Probability that at least 47 students passed
1 - pbinom(46, size=n, prob=p, lower.tail = TRUE)

# Q2.i The random variable X here is the number of calls received in one hour.

lambda <- 12

p_exactly_15 <- dpois(15, lambda)
print(p_exactly_15)

