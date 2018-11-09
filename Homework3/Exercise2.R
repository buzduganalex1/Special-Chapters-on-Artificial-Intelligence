source('Functions.R', chdir = TRUE)

resultExercise1 <- exercise1(100, 3, 5, -200, 200, 1)

resultExercise2 <- exercise2(unlist(resultExercise1[1]), unlist(resultExercise1[2]))

print(resultExercise2[1])

print(resultExercise2[2])