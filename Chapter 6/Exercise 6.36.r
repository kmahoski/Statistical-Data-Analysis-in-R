strengths <- c(
	5408, 5431, 5475, 5442, 5376, 5388, 5459, 5422,
	5416, 5435, 5429, 5429, 5401, 5446, 5487, 5416,
	5382, 5357, 5388, 5457)
# (the first 2 rows from the whole sample)

hist(strengths, breaks = 10, freq = FALSE, main = "Histogram")
# The information that are shown are not the same, but a similar
# conclusion can be drawn, because the Stem-and-Leaf plots, too,
# show the density for a given interval, like in this case.

