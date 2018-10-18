source("Functions.R")

factura <- c(46, 33, 39, 37, 46, 30, 48, 32, 49, 35, 30, 48)

sum(factura)

min(factura)

max(factura)

x <- length(which(factura > 40))

(x / length(factura)) * 100