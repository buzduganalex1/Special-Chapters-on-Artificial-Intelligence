exercise2 <- function(m, a, b, xmin, xmax){
    x <- runif(m, min = xmin, max = xmax)
    
    e <- rnorm(m, 1)

    y <- a + b * x + e

    g <- lm(y~x)
    
    plot(y~x) 

    abline(g, col="red")
}

exercise2(100, 3, 5, -5, 5)