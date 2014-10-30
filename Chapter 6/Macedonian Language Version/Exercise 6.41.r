carDefects <- c(4, 4, 6, 21, 8, 5, 30, 3)
names(carDefects) <- c("dents", "pits", "outOfSequence", "undertrimmed",
	"missingHolesOrSlots", "notLubricated", "outOfContour", "notDeburred")

# Карактеристично за Pareto Chart-от е тоа што вредностите
# треба да се сортирани во опаѓачки редослед.
carDefects <- sort(carDefects, decreasing = TRUE)

# Еден начин на прикажување на информациите од еден Pareto Chart
# (без користење посебна функција од дадена библиотека) 
# е преку Bar Plot и график на функцијата на распределба.
barplot(carDefects)
plot(cumsum(carDefects), type = "o")
# На Bar Plot-от може да се забележи дека функцијата на густина
# на распределба е опаѓачка. Соодветно, прикажана е и фукнцијата на
# распределба, која е конкавна заради подредувањето по опаѓачки редослед.
