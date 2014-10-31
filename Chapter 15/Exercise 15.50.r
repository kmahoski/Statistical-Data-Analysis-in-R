weightsBefore <- c(195, 213, 247, 201, 187, 210, 215, 246, 294, 310)
weightsAfter <- c(187, 195, 221, 190, 175, 197, 199, 221, 278, 285)

confidenceLevel <- 0.95

wilcox.test(weightsBefore, weightsAfter, alternative = "two.sided",
	conf.level = confidenceLevel, conf.int = TRUE)

