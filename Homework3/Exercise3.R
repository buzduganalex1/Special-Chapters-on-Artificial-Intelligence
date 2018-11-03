exercise3 <- function(m, xmin, xmax, sigma){
    x <- runif(m, min = xmin, max = xmax)
    
    e <- rnorm(m, sigma)

    a <- 3
    
    b <- 5

    y <- a + b * x + e

    plot(lm(y~x))
    
    summary(g)
}

print("a")
exercise3(100, -200, 200, 1.5)

print("b")
exercise3(10, -5, 5, 1)

print("c")
exercise3(10000, -5, 5, 1)

print("d")
exercise3(10, 5, 5.2, 1)

print("e")
exercise3(10000, 5, 5.2, 1.5)

print("f")
exercise3(10, 5, 5.2, 0.01)