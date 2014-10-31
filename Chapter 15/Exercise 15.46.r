fluorideLevels <- c(7, 3, 4, 2, 5, 6, 9, 8, 7, 3, 4, 4, 3, 2, 6)

nullMedianValue <- 6
confidenceLevel <- 0.95

signTestNormalApproximation(fluorideLevels, md = nullMedianValue,
	alternative = "less", conf.level = confidenceLevel)
