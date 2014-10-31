fluorideLevels <- c(7, 3, 4, 2, 5, 6, 9, 8, 7, 3, 4, 4, 3, 2, 6)

nullMedianValue <- 6
confidenceLevel <- 0.95

wilcox.test(fluorideLevels, mu = nullMedianValue, alternative = "less",
	conf.level = confidenceLevel, conf.int = TRUE)

