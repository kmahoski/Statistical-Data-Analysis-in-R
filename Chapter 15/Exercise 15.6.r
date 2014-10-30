fatLevels <- c(16.8, 17.2, 17.4, 16.9, 16.5, 17.1)

nullMedianValue <- 17
confidenceLevel <- 0.95

SIGN.test(fatLevels, md = nullMedianValue, alternative = "two.sided", conf.level = confidenceLevel)
