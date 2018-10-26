require(graphics)

n <- 20
k <- seq(0, n)

c <- 
print(c)

for(i in seq(0.1, 0.9, 0.1)){
    title <- paste("Binomial distribution for", i)

    pdf(paste(title,".pdf"),width=6,height=4,paper='special') 

    plot (k, dbinom(k, n, i, log = FALSE), type = "l" ,ylab = "log density", main = title, col = "red", lwd = 2)
    
    dev.off()
}