visualAccommodations <- c(36.45, 67.9, 38.77, 42.18, 26.72, 50.77, 39.3, 49.71)

qqnorm(visualAccommodations, datax = "TRUE")
qqline(visualAccommodations, datax = "TRUE")
# In this case there is a large deviation of the points for the observations
# from the line for one to say that the distribution is normal.
# The scheme that is formed looks like the one that is characteristic for a
# heavy-tailed distribution, like, for example, the Student's (t-distribution).
