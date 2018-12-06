# fit <- lm(data=newData)

# rss <- sum(residuals(fit)^2)

# rss

# r2 <- summary(lm(data=dataset))$r.squared 

# r2

# a <-coef(fit)[1];

# b <- coef(fit)[2];

# a

# b

# test <- dataset[, c("PRICE", "BRD", "FLR")]

# test2 <- dataset[, c("PRICE", "BRD")]

# result <- lm(data=test)

# result2 <- lm(data=test2)

# summary(result)

# summary(result2)

# fit <- lm(data=dataset)

# rss <- sum(residuals(fit)^2)

# summary(fit)

# rss

# # y <- cbind(c(40 ,50 ,50, 70, 65, 65, 80))

# # x <- cbind(c(1, 1, 1, 1, 1, 1, 1), c(100 ,200 ,300, 400, 500, 600, 700))

# # test <- t(x) * c(x)

# # test

test <- dataset[, c("FLR", "ST", "LOT", "CON", "GAR", "L2")]

fit = lm(data=test)

summary(fit)

rss<-sum(resid(fit)^2);

rSquared<-summary(fit)$r.squared;

rSquaredAdj<-summary(fit)$adj.r.squared;

sigmaPatrat<-(sigma(fit)^2);

m=26;

Cp<-(rss/sigmaPatrat)-(m-2*(6));

print(test)

print(rss)

print(rSquared)

print(rSquaredAdj)

print(Cp)