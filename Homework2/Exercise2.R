require(graphics)
# Compute P(45 < X < 55) for X Binomial(100,0.5)
sum(dbinom(46:54, 100, 0.5))

## Using "log = TRUE" for an extended range :
n <- 20
k <- seq(0, n)

c <- 
print(c)

for(i in seq(0.1, 0.9, 0.1)){
    title <- paste("Binomial distribution for", i)

    pdf(paste(title,".pdf"),width=6,height=4,paper='special') 

    plot (k, dbinom(k, n, i, log = FALSE), type = "l", ylab = "log density",
        main = title, col = "red", lwd = 2)
    dev.off()
}
