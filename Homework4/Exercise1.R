dataset = read.table("https://profs.info.uaic.ro/~cgatu/csia/res/house.dat", header=TRUE)

datasetCols = ncol(dataset)

minRssCombination = dataset
maxRCombination = dataset
maxRSquaredCombination = dataset
minCpCombination = dataset

minRss = 10000
minCp = 100
maxRSquared = 0
maxR = 0

m  = 26

i = 2

while( i <= datasetCols){
  
    newData = combn(names(dataset), i, simplify=TRUE)

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
            print(rss)
            
            minRss = rss
            minRssCombination = combinationDataset
        }

        if(rSquared > maxRSquared){
            print(rSquared)
            
            maxRSquared = rSquared   
            maxRSquaredCombination = combinationDataset
        }

        if(Cp < minCp){
            print(Cp)

            minCp = Cp
            minCpCombination = combinationDataset
        }

        if(maxR < rSquaredAdj){
            print(rSquaredAdj)

            maxR = rSquaredAdj
            maxRCombination = combinationDataset
        }

        newDataLenght = newDataLenght - 1
    }

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