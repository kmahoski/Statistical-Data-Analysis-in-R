diameterMeasurements1 <- c(
	0.265, 0.265, 0.266, 0.267, 0.267, 0.265, 
	0.267, 0.267, 0.265, 0.268, 0.268, 0.265)
	
diameterMeasurements2 <- c(
	0.264, 0.265, 0.264, 0.266, 0.267, 0.268,
	0.264, 0.265, 0.265, 0.267, 0.268, 0.269)

confidenceLevel <- 0.95

wilcox.test(diameterMeasurements1, diameterMeasurements2, conf.level = confidenceLevel,
	conf.int = TRUE, paired = TRUE)
