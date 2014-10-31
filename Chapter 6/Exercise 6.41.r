carDefects <- c(4, 4, 6, 21, 8, 5, 30, 3)
names(carDefects) <- c("dents", "pits", "outOfSequence", "undertrimmed",
	"missingHolesOrSlots", "notLubricated", "outOfContour", "notDeburred")

# It is characteristic of the Pareto Chart that the values
# should be sorted in descending order.
carDefects <- sort(carDefects, decreasing = TRUE)

# One way to show the information of a Pareto Chart
# (without using a dedicated function of a given library)
# is by a Bar Plot and a plot for the distribution function.
barplot(carDefects)
plot(cumsum(carDefects), type = "o")
# On the Bar Plot we can see that the density function
# for the distribution is descending. Appropriately, the
# distribution function is shown as well, which is concave
# because of the ordering in descending order.
