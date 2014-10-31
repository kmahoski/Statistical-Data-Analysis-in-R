cholesterolLevelsBefore <- c(265, 240, 258, 295, 251, 245, 287, 314, 260, 279, 283, 240, 238, 225, 247)
cholesterolLevelsAfter <- c(229, 231, 227, 240, 238, 241, 234, 256, 247, 239, 246, 218, 219, 226, 233)

confidenceLevel <- 0.95

wilcox.test(cholesterolLevelsBefore, cholesterolLevelsAfter, conf.level = confidenceLevel,
	conf.int = TRUE, paired = TRUE)
