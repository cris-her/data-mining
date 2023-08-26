#Poblacion <- read.csv("c:/Users/Users/Desktop/Poblacion.csv")
#View(Poblacion)
indices <- sample(1:nrow(Poblacion),20)
#indices <- sample(1:nrow(Poblacion),20,replace=TRUE)
indices
Poblacion.muestreado <- Poblacion[indices]
Poblacion.muestreado