exercise2 <- function(m, a, b, xmin, xmax){
    x <- runif(m, min = xmin, max = xmax)
    
    e <- rnorm(m, sd=1.5)

    y <- a + b * x + e

    g <- lm(y~x)
    
    summary(g)
}

exercise2(10000, 3.0, 5, -5, 5)