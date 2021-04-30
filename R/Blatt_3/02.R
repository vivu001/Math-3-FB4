# Title     : TODO
# Objective : TODO
# Created by: ducvu
# Created on: 30.04.2021

# a
# vector Birne erstellt
Birne <- c(1159, 2578, 673, 1781, 562, 3924, 2187, 208, 6395, 48, 413, 1130, 595, 221, 626)
# Birne ausgegeben
Birne 
# Birne aufsteigend sortieren
  sort(Birne)
# Uebersicht ueber Lagermaße: quantile(Birne, type=7)
summary(Birne)

# Quantile berechnen
quantile(Birne, type=2) #9 unterschiedliche Moeglichkeiten quantil auszurechnen


boxplot(Birne)
hist(Birne, freq = F) # F = Histogramm Haeufigkeit
#Empirische Verteilungsfunktion
plot.ecdf(Birne) 

# b
?boxplot
# "range" bestimmt, wie weit die Plot-Whisker aus der Box herausragen. 
# Wenn der Bereich positiv ist, erstrecken sich die Whisker bis zum extremsten Datenpunkt, 
# der nicht mehr als den Bereich mal dem Interquartilbereich von der Box beträgt. 
# Ein Wert von Null bewirkt, dass sich die Whisker bis zu den Datenextremen erstrecken. 
boxplot(Birne, range = 1) # Xmax = X(n) = X(13) = 2578   
boxplot(Birne, range = 2) # Xmax = X(n) = X(13) = 3924   
boxplot(Birne, range = 3) # Xmax = X(n) = X(13) = 6395 (range = 0 und range >=0 ergeben sich gleiche Ergebnisse) 



