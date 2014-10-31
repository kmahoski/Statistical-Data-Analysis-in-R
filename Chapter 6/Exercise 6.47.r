temperatures <- c(
	43, 47, 51, 48, 52, 50, 46, 49, 45, 52,
	46, 51, 44, 49, 46, 51, 49, 45, 44, 50,
	48, 50, 49, 50)

# a
mean(temperatures)
median(temperatures)

# b
var(temperatures)
sd(temperatures)

# c
boxplot(temperatures)

# We can see that
# min(temperatures) = q[0] = 43,
# q[1] = 46,
# median(temperatures) = q[2] = 49,
# q[3] = 50,
# max(temperatures) = q[4] = 52,
# and for the ranges (interquantile ranges) that
# q[1] - q[0] = 3,
# q[2] - q[1] = 3,
# q[3] - q[2] = 1,
# q[4] - q[3] = 2.
