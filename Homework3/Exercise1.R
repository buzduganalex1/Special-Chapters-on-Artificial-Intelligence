exercise1 <- function(m, a, b, xmin, xmax, sigma){
    x <- runif(m, min = xmin, max = xmax)
    
    e <- rnorm(m, sigma ^ 2)

    y <- a + b * x + e
    
    plot(y~x) 
}

exercise1(100, 3, 5, -200, 200, 1)