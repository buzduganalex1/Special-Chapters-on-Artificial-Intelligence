source("Functions.R")

x <- c(1, 8, 2, 6, 3, 8, 8, 5, 5, 5)

sum(x)/10

lapply(x, log2)

max(x)-min(x)

computeY(x)

y <- computeY(x)

mean(y)

sd(y)