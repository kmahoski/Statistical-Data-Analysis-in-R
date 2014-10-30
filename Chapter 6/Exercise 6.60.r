concentrations <- c(
					17.0, 16.7, 17.1, 17.5, 17.6, 16.6, 17.4, 17.4,
					18.1, 17.5, 16.3, 17.2, 17.4, 17.5, 16.5, 16.1,
					17.4, 17.5, 17.4, 17.8, 17.1, 17.4, 17.4, 17.4,
					17.3, 16.9, 17.0, 17.6, 17.1, 17.3, 16.8, 17.3,
					17.4, 17.6, 17.1, 17.4, 17.2, 17.3, 17.7, 17.4,
					17.1, 17.4, 17.0, 17.4, 16.9, 17.0, 16.8, 17.8,
					17.8, 17.3)

mean(concentrations)
median(concentrations)
quantile(concentrations)
sd(concentrations)
var(concentrations)

plot.ts(concentrations, type = "b")
