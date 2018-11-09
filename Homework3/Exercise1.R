source('Functions.R', chdir = TRUE)

result <- exercise1(100, 3, 5, -200, 200, 1)

dataFrame <- data.frame(x = result[1], y = result[2])

print(dataFrame)

plot(dataFrame)
