dataset = read.table("https://profs.info.uaic.ro/~cgatu/csia/res/house.dat", header=TRUE)

datasetCols = ncol(dataset)

cpResultsList <- list();

rssResultsList <- list();

rsquaredResultsList <- list();

rResultsList <- list();

minRssCombination = dataset
maxRCombination = dataset
maxRSquaredCombination = dataset
minCpCombination = dataset

m  = 26

i = 3

while( i <= datasetCols){

    minRss = 10000000
    minCp = 100
    maxRSquared = 0
    maxR = 0

    newData = combn(names(dataset), i - 1, simplify=TRUE)
    
    newDataLenght = dim(newData)[2]
    
    while(newDataLenght > 0){
        
        combinationDataset = dataset[, newData[, newDataLenght]]

        fit = lm(data=combinationDataset)

        rss<-sum(resid(fit)^2);

        rSquared<-summary(fit)$r.squared;

        rSquaredAdj<-summary(fit)$adj.r.squared;

        sigmaPatrat<-(sigma(fit)^2);

        Cp<-(rss/sigmaPatrat)-(m-(2*i));

        if(rss < minRss ){
            minRss = rss
            minRssCombination = combinationDataset
        }

        if(rSquared > maxRSquared){
            maxRSquared = rSquared   
            maxRSquaredCombination = combinationDataset
        }

        if(Cp < minCp){
            minCp = Cp
            minCpCombination = combinationDataset
        }

        if(maxR < rSquaredAdj){
            maxR = rSquaredAdj
            maxRCombination = combinationDataset
        }

        newDataLenght = newDataLenght - 1
    }

    print(minRss)
    
    print(minCp)
    
    print(maxR)
    
    print(maxRSquared)

    rssResultsList[length(rssResultsList)+1] = minRss
    cpResultsList[length(cpResultsList)+1] = minCp
    rsquaredResultsList[length(rsquaredResultsList)+1] = maxRSquared
    rSquaredAdj[length(rSquaredAdj)+1] = maxRSquared

    i = i + 1
}

print(minRss)
print(minRssCombination)

print(maxRSquared)
print(maxRSquaredCombination)

print(maxR)
print(maxRCombination)

print(minCp)
print(minCpCombination)

jpeg(paste("Rss", ".jpeg"))

plot(c(1:12), unlist(rssResultsList))
 
dev.off()

jpeg(paste("R", ".jpeg"))

plot(c(1:12), unlist(rResultsList))

dev.off()

jpeg(paste("R2", ".jpeg"))

plot(c(1:12), unlist(rsquaredResultsList))
 
dev.off()

jpeg(paste("C", ".jpeg"))

plot(c(1:12), unlist(cpResultsList))
 
dev.off()



