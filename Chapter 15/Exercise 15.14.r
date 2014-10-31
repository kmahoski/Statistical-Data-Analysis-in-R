diameterMeasurements1 <- c(
	0.265, 0.265, 0.266, 0.267, 0.267, 0.265,
	0.267, 0.267, 0.265, 0.268, 0.268, 0.265)
				
diameterMeasurements2 <- c(
	0.264, 0.265, 0.264, 0.266, 0.267, 0.268,
	0.264, 0.265, 0.265, 0.267, 0.268, 0.269)

nullMedianValue <- 0
confidenceLevel <- 0.95

diameterMeasurementDifferences <- diameterMeasurements1 - diameterMeasurements2

signTestNormalApproximation(diameterMeasurementDifferences, md = nullMedianValue,
	alternative = "two.sided", conf.level = confidenceLevel)
	