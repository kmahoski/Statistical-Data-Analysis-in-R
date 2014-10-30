temperatures <- c(953, 950, 948, 955, 951, 949, 957, 954, 955)

# a
mean(temperatures)
var(temperatures)
sd(temperatures)

# b
median(temperatures)
# Најголемата вредност може да се зголемува бесконечно, без притоа да ја
# промени вредноста на медијаната (според дефиницијата за оваа статистика).

# c
boxplot(temperatures)
