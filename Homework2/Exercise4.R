source("Functions.R")

for(i in c(1, 5, 10, 100)){
   title <- paste("Histogram ", i)
    
    pdf(paste(title,".pdf"), width=6, height=4, paper='special') 
   
    vectorMeans <- CLT(i)
    
    hist(vectorMeans, main=title)

    dev.off()
}