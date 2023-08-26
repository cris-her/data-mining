#En consola
Poblacion <- read.csv("c:/Users/Desktop/Poblacion.csv")
View(Poblacion)
attach(Poblacion)
summary(Poblacion)
#Por separado
mean(Esperanza_Hombres)
median(Esperanza_Hombres)
#install.packages("modeest")
#library(modeest)
mfv(Esperanza_Hombres)