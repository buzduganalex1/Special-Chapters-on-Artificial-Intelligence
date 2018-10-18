source("Functions.R")

x <- readinteger()

length(x)

print(x)

maxValue <- max(x)
minValue <- min(x)
meanValue <- mean(x)
medianValue <- median(x)
standardDeviation <- sd(x)
standardization <- scale(x)

sort(x, FALSE)

print(maxValue)
print(minValue)
print(meanValue)
print(medianValue)
print(standardDeviation)
print(standardization)

##(x-mean(x))/sd(x) -- standardization
