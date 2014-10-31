mileages.Mercedes <- c(24.7, 24.8, 24.9, 24.7, 24.5, 24.9, 24.6, 23.9, 24.9, 24.8)
mileages.Volkswagen <- c(41.7, 42.3, 41.6, 39.5, 41.9, 42.8, 42.4, 39.9, 40.8, 29.6)

confidenceLevel <- 0.99

wilcox.test(mileages.Mercedes, mileages.Volkswagen, alternative = "two.sided",
	conf.level = confidenceLevel, conf.int = TRUE, exact = FALSE, correct = FALSE)

