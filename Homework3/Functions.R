exercise1 <- function(m, a, b, xmin, xmax, sigma){
    x <- runif(m, min = xmin, max = xmax)
    
    e <- rnorm(m, sigma ^ 2)

    y <- a + b * x + e
    
    result <- list(x = x, y = y)
    
    return(result)
}

exercise2 <- function(x, y){ 
    g <- lm(y~x)

    a <-coef(g)[1];

    b <- coef(g)[2];
    
    prd<-predict(g, newdata=data.frame(x, y), interval="confidence", level = 0.95,type="response");

    result <- list(a = a, b = b, prediction = prd)
    
    return(result)
}

exercise3 <- function(m, a, b, xmin, xmax, sigma){
  resultExercise1 <- exercise1(m, a, b, xmin, xmax, sigma)

  x <- unlist(resultExercise1[1])

  y <- unlist(resultExercise1[2])

  resultExercise2 <- exercise2(x, y)

  intercept <- unlist(resultExercise2[1])

  slope <- unlist(resultExercise2[2])

  plot(y~x)

  abline(intercept, slope, col="red", lwd = 2)

  abline(3, 5, col="green", lwd = 2)
}

savePlots <- function(m, xmin, xmax, sigma, plotName){
  jpeg(paste(plotName, ".jpeg"))
    
  exercise3(m, 3, 5, xmin, xmax, sigma)

  dev.off()
}

exercise2Enhanced <- function(x, y, X, Y){
  xy <- sum(x*y) / 1000

  xSquared <- sum(x^2) / 1000

  slope <- xy / xSquared

  intercept <- Y - (slope * X)

  OLS <- intercept + slope * x

  return(OLS)
}
