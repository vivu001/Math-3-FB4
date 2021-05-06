
# a
schuhe <- read.table(file = "R/Blatt_4/schuhe.txt", header = TRUE, sep = " ")

# plot zeichnen
plot(schuhe$Groesse, schuhe$Schuhgroesse,
     col="#69b3a2", main="Streudiagramm",
     xlab="Groesse", ylab="Schuhgrosse",
     pch=19)

# b
plot(schuhe$Groesse, schuhe$Schuhgroesse, col="#69b3a2", main="Streudiagramm",
     xlab="Groesse", ylab="Schuhgrosse", type = "n")

maennlich <- schuhe[schuhe$Geschlecht == "m",]
x_groesse_maennlich <- maennlich[,2]
y_schugrosse_maennlich <- maennlich[,3]

weiblich <- schuhe[schuhe$Geschlecht == "w",]
x_groesse_weiblich <- weiblich[,2]
y_schugrosse_weiblich <- weiblich[,3]

# Herren
points(x_groesse_maennlich, y_schugrosse_maennlich, col="red", pch=19)
# Frauen
points(x_groesse_weiblich, y_schugrosse_weiblich, col="blue", pch=18)

# legend hinzufuegen
legend("topleft", legend=c("männlich", "weiblich"), 
       col=c("red", "blue"), pch = c(19, 18))

# help(par)

# c
# Korrrelationskoeffizienten nach Bravais-Pearson
cor(schuhe$Groesse, schuhe$Schuhgroesse, method = c("pearson"))
# cor.test(schuhe$Groesse, schuhe$Schuhgroesse, method = c("pearson"))

# getrennt nach Geschlecht ????
# cor(schuhe$Groesse, schuhe$Schuhgroesse, method = c("pearson"))
# ?cor
