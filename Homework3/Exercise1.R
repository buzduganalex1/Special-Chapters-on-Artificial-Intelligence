exercise1 <- function(m, a, b, xmin, xmax, sigma){
    x <- runif(m, min = xmin, max = xmax)
    
    e <- rnorm(m, sigma ^ 2)

    y <- a + b * x + e
    
    result <- list(x = x, y = y)
    
    return(result)
}

result <- exercise1(100, 3, 5, -200, 200, 1)

dataFrame <- data.frame(x = result[1], y = result[2])

print(dataFrame)

plot(dataFrame)
