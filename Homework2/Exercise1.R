showGraph <- function(a, b){
    if(a >= b){
        stop("First parameter value must be smaller than second parameter value")
    }

    values <- c()

    for (i in a:b){
        values <- c(values, 2^i)
    }   

    plot(values, values, col="red", type="l", lwd=2, main="f(x)=2ˆx, x in [a,b]", xlab="x values",ylab="y values")
}

showGraph(2,5)