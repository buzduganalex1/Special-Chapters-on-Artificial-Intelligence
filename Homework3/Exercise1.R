exercise1 <- function(m, xmin, xmax, sigma){
    x <- runif(m, min = xmin, max = xmax)
    
    a <- 3

    b <- 5

    e <- rnorm(m, sigma)

    y <- a + b * x + e
    
    g <- lm(y~x)

    summary(g)
  
    plot(y~x) 

    abline(g, col="red")
}

  jpeg('rplot1.jpg')
        exercise1(100, -200, 200, 1.5)
  dev.off()

  jpeg('rplot2.jpg')
    exercise1(10, -5, 5, 1)
  dev.off()
  
  jpeg('rplot3.jpg')
    exercise1(10000, -5, 5, 1)
  dev.off()
  
  jpeg('rplot4.jpg')
    exercise1(10, 5, 5.2, 1)
  dev.off()
  
  jpeg('rplot5.jpg')
    exercise1(10000, 5, 5.2, 1.5)
  dev.off()
  
  jpeg('rplot6.jpg')
    exercise1(10, 5, 5.2, 0.01)
  dev.off()