grades <- c(
			94, 90, 92, 91, 91, 86, 89, 91, 91, 90, 90, 93,
			87, 90, 91, 92, 89, 86, 89, 90, 88, 95, 91, 88,
			89, 92, 87, 89, 95, 92, 85, 91, 85, 89, 88, 84,
			85, 90, 90, 83)

# a
stem(grades)

# b
mean(grades)
sd(grades)
median(grades)

# c
length(grades[grades > 90]) / length(grades)
