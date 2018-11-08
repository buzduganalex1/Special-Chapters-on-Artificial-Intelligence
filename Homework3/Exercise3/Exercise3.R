exercise3 <- function(m, a, b, xmin, xmax, sigma){
    x <- runif(m, min = xmin, max = xmax)
    
    e <- rnorm(m, 1)

    y <- a + b * x + e

    g <- lm(y~x)

    a <-coef(g)[1];

    b <- coef(g)[2];
    
    prd<-predict(g, newdata=data.frame(x, y), interval="confidence", level = 0.95,type="response");

    result <- list(data.frame(a = a, b = b), prediction = prd)
  
    plot(y~x) 

    abline(g, col="red")
}

savePlots <- function(m, xmin, xmax, sigma, plotName){
  jpeg(paste(plotName, ".jpeg"))
    
  exercise3(m, 3, 5, xmin, xmax, sigma)

  dev.off()
}

savePlots(100, -200, 200, 1.5, "Plot-a")

savePlots(10, -5, 5, 1, "Plot-b")

savePlots(10000, -5, 5, 1, "Plot-c")

savePlots(10, 5, 5.2, 1, "Plot-d")

savePlots(10000, 5, 5.2, 1.5, "Plot-e")

savePlots(10, 5, 5.2, 0.01, "Plot-f")
