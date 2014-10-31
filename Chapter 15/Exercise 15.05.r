compressiveStrengths <- c(2216, 2237, 2249, 2204, 2225, 2301, 2281, 2263, 2318, 2255, 2275, 2295)

nullMedianValue <- 2250
confidenceLevel <- 0.95

# a
SIGN.test(compressiveStrengths, md = nullMedianValue,
	alternative = "greater", conf.level = confidenceLevel)

# b
signTestNormalApproximation(compressiveStrengths, md = nullMedianValue,
	alternative = "greater", conf.level = confidenceLevel)

