heatGains1 <- c(25, 27, 29, 31, 30, 26, 24, 32, 33, 38)
heatGains2 <- c(31, 33, 32, 35, 34, 29, 38, 35, 37, 30)

confidenceLevel <- 0.95

wilcox.test(heatGains1, heatGains2, alternative = "two.sided", conf.level = confidenceLevel,
	conf.int = TRUE, paired = FALSE, exact = FALSE, correct = FALSE)
	