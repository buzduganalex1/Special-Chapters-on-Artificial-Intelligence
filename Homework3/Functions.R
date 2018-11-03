library(dplyr)
library(ggplot2)

x <- runif(100, min = -200, max = 200)

e <- rnorm(100, 1.5)

a <- 3

b <- 5

y <- a + b * x + e

slope <- cor(x, y) * (sd(y) / sd(x))

intercept <- mean(y) - (slope * mean(x))

mtcars %>% plot(x, y) + geom_point(colour = "red") + geom_smooth(method = "lm", fill = NA)

lmodel <- lm(sqrt(mpg) ~ sqrt(disp), data = mtcars)

lmodel$coefficients

summary(lmodel)