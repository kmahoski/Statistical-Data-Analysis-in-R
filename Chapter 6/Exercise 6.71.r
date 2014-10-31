femaleHeights <- c(
	62, 64, 66, 67, 65, 68, 61, 65, 67, 65, 64,
	63, 67, 68, 64, 66, 68, 69, 65, 67, 62, 66,
	68, 67, 66, 65, 69, 65, 70, 65, 67, 68, 65,
	63, 64, 67, 67)
					
femaleHeightsMean = mean(femaleHeights)
femaleHeightsSD = sd(femaleHeights)
x <- seq(femaleHeightsMean - 4 * femaleHeightsSD,
	femaleHeightsMean + 6 * femaleHeightsSD, length = 1000)

maleHeights <- c(
	69, 67, 69, 70, 65, 68, 69, 70, 71, 69, 66,
	67, 69, 75, 68, 67, 68, 69, 70, 71, 72, 68,
	69, 69, 70, 71, 68, 72, 69, 69, 68, 69, 73,
	70, 73, 68, 69, 71, 67, 68, 65, 68, 68, 69,
	70, 74, 71, 69, 70, 69)
					
maleHeightsMean = mean(maleHeights)
maleHeightsSD = sd(maleHeights)

par(mfrow = c(1, 3))
qqnorm(femaleHeights, datax = "TRUE")
qqline(femaleHeights, datax = "TRUE")
qqnorm(maleHeights, datax = "TRUE")
qqline(maleHeights, datax = "TRUE")
matplot(x, cbind(dnorm(x, femaleHeightsMean, femaleHeightsSD),
	dnorm(x, maleHeightsMean, maleHeightsSD)), type = "l", col = c("red", "blue"))
