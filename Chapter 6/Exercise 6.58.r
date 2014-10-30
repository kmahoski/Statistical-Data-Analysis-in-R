measurements <- c(
					47.9, 48.6, 48.0, 48.1, 43.0, 43.2, 47.9, 48.8,
					47.5, 48.0, 42.9, 43.6, 48.6, 48.1, 48.6, 48.3,
					43.6, 43.2, 48.0, 48.3, 48.0, 43.2, 43.3, 43.5,
					48.4, 47.2, 47.9, 43.0, 43.0, 43.0, 48.1, 48.9,
					48.3, 43.5, 42.8, 48.0, 48.6, 48.5, 43.1, 43.1)

# a
stem(measurements)
plot.ts(measurements, type = "b")

# b
mean(measurements)
mean(measurements) - 48
# The mean value is lesser by 1.81 than the one given by the specification.
sd(measurements)
sd(measurements) - 2
# The standard deviation is greater by 0.506279 than the one given by the specification.
