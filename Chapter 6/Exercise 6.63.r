diameters <- c(74.001, 74.003, 74.015, 74, 74.005, 74.002, 74.005, 74.004)

qqnorm(diameters, datax = "TRUE")
qqline(diameters, datax = "TRUE")
# In this case, at first look, one can say that the points are close to
# the line, i.e. the distribution is normal. However, there is one
# extreme outlier - for the observation of 74.015. If that outlier didn't
# exist in the sample, we would conclude that the sample has normal
# distribution with dispersion smaller than 1 (the dispersion of the
# distribution N(0, 1) with which the sample's distribution is compared,
# because the angle between the slope of the line is greater than π/4
# (its slope is greater than 1).
