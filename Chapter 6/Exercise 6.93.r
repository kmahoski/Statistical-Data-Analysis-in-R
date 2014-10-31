hours <- c(75, 63, 1000, 36, 51, 45, 80, 90)
# 1000 is taken as a random high value.

median(hours)
hours <- c(hours[c(1:2)], 100, hours[c(4:length(hours))])
mean(hours)
hours <- c(hours[c(1:2)], hours[c(4:length(hours))])
mean(hours)
