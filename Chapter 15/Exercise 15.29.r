minutesLate1 <- c(13, 10, 1, -4, 0, 9)
minutesLate2 <- c(15, 8, 3, -1, -2, 4)

confidenceLevel <- 0.99

wilcox.test(minutesLate1, minutesLate2, alternative = "two.sided", conf.level = confidenceLevel,
	conf.int = TRUE, paired = FALSE)
	