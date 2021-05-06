# Title     : TODO
# Objective : TODO
# Created by: ducvu
# Created on: 21.04.2021

# a
crash <- read.table(file = "R/Blatt_1/09crashtest.txt", header = TRUE, sep = "\t")
# crash_without_true_header <- read.table(file = "R/Blatt_1/09crashtest.txt", header = FALSE, sep = "\t")
crash$Doors
# typeof(crash$Doors)
crash[,1] # crash$make
crash[10,]

# b
namen <- c("keine Angabe", "2 Türen", "4 Türen")
farben <- c("blue", "red", "green")
pie(table(crash$Doors), labels=namen, col=farben)

# c
abs.ergebnis <- table(crash$Doors)
abs.ergebnis
rel.doors <- abs.ergebnis/length(crash$Doors)

# d
barplot(rel.doors, main="Relative Häufigkeiten",
        xlab = "Anzahl der Türen", ylab = "Anzahl der Autos",
        ylim = c(0, 0.5),
        legend.text = namen,
        args.legend = list(x = "top"),
        col=farben)

# e
hist(crash$Wt, breaks = "Sturges", freq = FALSE,
     main="Gewicht (kg)", col = "blue",
     xlab = "Gewicht", ylab = "Frequenz",
     xlim = c(1000, 6000))

# f
# Empirical Cumulative Distribution Function
plot(ecdf(crash$Wt), main = "Empirische Verteilungsfunktion von Gewicht",
     col = "green",
     xlab = "Gewicht (kg)",
     pch=20) # �ber "pch": http://www.sthda.com/english/wiki/r-plot-pch-symbols-the-different-point-shapes-available-in-r





