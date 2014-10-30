pHs <- c(7.91, 7.85, 6.82, 8.01, 7.64, 6.95, 7.05, 7.35, 7.25, 7.42)

nullMedianValue <- 7
confidenceLevel <- 0.95

signTestNormalApproximation(pHs, md = nullMedianValue,
	alternative = "two.sided", conf.level = confidenceLevel)
