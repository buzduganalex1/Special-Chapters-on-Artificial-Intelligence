exercise1 <- function(m, a, b, xmin, xmax, sigma){
    x <- runif(m, min = xmin, max = xmax)
    
    e <- rnorm(m, 0, sigma ^ 2)

    y <- a + b * x + e

    g <- lm(y~x)
    
    summary(g)
}

exercise1(10, 2, 3, -5, 5, 1)