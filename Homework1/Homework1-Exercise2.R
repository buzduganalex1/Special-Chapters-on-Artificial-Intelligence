#2
source("/Homework1/Functions.R")
x <- c(1, 8, 2, 6, 3, 8, 8, 5, 5, 5)
#a)
sum(x)/10

#b) 
lapply(x, log2)

#c) 
max(x)-min(x)

#d)

computeY(x)

#e)

y <- computeY(x)
mean(y)
sd(y)