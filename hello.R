print("brms")
 
library(brms)

set.seed(123)
n <- 100
x <- rnorm(n)
y <- 1.5 + 2 * x + rnorm(n, sd = 1)

dat <- data.frame(x = x, y = y)

fit <- brm(y ~ x, data = dat, family = gaussian(), chains = 2, iter = 1000)

summary(fit)
plot(fit)
