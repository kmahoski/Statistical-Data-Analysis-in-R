cholesterolLevels1 <- c(265, 240, 258, 295, 251, 245, 287, 314, 260, 279, 283, 240, 238, 225, 247)
cholesterolLevels2 <- c(229, 231, 227, 240, 238, 241, 234, 256, 247, 239, 246, 218, 219, 226, 233)

nullMedianValue <- 0
confidenceLevel <- 0.95

cholesterolLevelDifferences <- cholesterolLevels1 - cholesterolLevels2

signTestNormalApproximation(cholesterolLevelDifferences, md = nullMedianValue,
	alternative = "two.sided", conf.level = confidenceLevel)
