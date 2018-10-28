showGraph <- function(a, b){
    if(a >= b){
        stop("First parameter value must be smaller than second parameter value")
    }

    values <- c()

    for (i in a:b){
        values <- c(values, 2^i)
    }   

    plot(values, col="red", type="l", lwd=2, main="f(x)=2^x, x in [a,b]", xlab="x values", ylab="y values")
}

CLT <- function(n){
    m <- matrix(runif(1000*n, min=-10, max=10), nrow=1000, ncol=n)
    
    rowMeans <- rowMeans(m)

    return(rowMeans)
}