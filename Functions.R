computeY <- function(x){
    return (x-5.1)/2.514403 
}

readinteger <- function()
{ 
    vec <- vector()
    i <- 1;
    
    while(i < 7){
        n <- readline(prompt="Enter an number: ")
        vec[i] <- as.integer(n) 
        i <- i + 1
    }

    return(vec)
}