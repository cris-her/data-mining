View(Poblacion)
cor(Poblacion)
estandarizacion <- scale(Poblacion)
ACP<-prcomp(estandarizacion)
ACP
summary(ACP)
desviaciones <- ACP[1]
desviaciones
varianza <- desviaciones ^2
varianza
CP1 <- ACP[[2]][,1]
CP1
CP2 <- ACP[[2]][,2]
CP2
Componentes_principales<-cbind(CP1,CP2)
Componentes_principales