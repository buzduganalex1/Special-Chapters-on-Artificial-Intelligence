exercise2 <- function(m, a, b, xmin, xmax){
    x <- runif(m, min = xmin, max = xmax)
    
    e <- rnorm(m, 1)

    y <- a + b * x + e

    g <- lm(y~x)
    
    summary(g)
}

exercise2(10, 2, 3, -5, 5)