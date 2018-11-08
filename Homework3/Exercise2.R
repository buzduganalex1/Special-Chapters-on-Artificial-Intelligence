exercise2 <- function(m, a, b, xmin, xmax){
    x <- runif(m, min = xmin, max = xmax)
    
    e <- rnorm(m, 1)

    y <- a + b * x + e

    g <- lm(y~x)

    a <-coef(g)[1];

    b <- coef(g)[2];
    
    prd<-predict(g, newdata=data.frame(x, y), interval="confidence", level = 0.95,type="response");

    result <- list(data.frame(a = a, b = b), prediction = prd)
    
    return(result)
}

result <- exercise2(100, 3, 5, -5, 5)

print(result[1])
print(result[2])