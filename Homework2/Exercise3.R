require(graphics)

u <- 0
q <- c(0.1, 1, 10)

for(i in q){
    title <- paste("Normal distribution for", i)

    pdf(paste(title,".pdf"),width=6,height=4,paper='special') 
    
    plot(dnorm(seq(-20, 20), 0, i), main = title, col = "red", lwd = 2, type = "l")

    dev.off()
}