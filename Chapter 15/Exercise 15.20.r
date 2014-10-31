pHs <- c(7.91, 7.85, 6.82, 8.01, 7.64, 6.95, 7.05, 7.35, 7.25, 7.42)

nullMedianValue <- 7
confidenceLevel <- 0.95

wilcox.test(pHs, alternative = "two.sided", mu = nullMedianValue,
	conf.level = confidenceLevel, conf.int = TRUE, paired = FALSE)

