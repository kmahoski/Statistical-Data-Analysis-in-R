dryingTimes1 <- c(
					1.6, 1.3, 1.5, 1.6, 1.7, 1.9, 1.8,
					1.6, 1.4, 1.8, 1.9, 1.8, 1.7, 1.5,
					1.6, 1.4, 1.3, 1.6, 1.5, 1.8)
					
dryingTimes2 <- c(
					1.8, 1.5, 1.5, 1.7, 1.6, 2.0, 2.1,
					1.7, 1.6, 1.9, 2.0, 1.9, 1.5, 1.7,
					1.6, 1.2, 1.6, 1.8, 1.6, 2.0)

confidenceLevel <- 0.95

SIGN.test(dryingTimes1, dryingTimes2, conf.level = confidenceLevel)
