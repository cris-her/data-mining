install.packages("TSA")
library(TSA)
data("airpass")
serie.ts <- ts(airpass)
str(serie.ts)
decompose(airpass)
plot(decompose(airpass))
plot(serie.ts, main="Pasajeros de 1960 a 1971", xlab="años",ylab="numero de pasajeros")
install.packages("forecast")
library("forecast")
modelo <- auto.arima(serie.ts)
summary(modelo)
pronostico <- forecast(modelo,12,level=95)
pronostico
plot(pronostico, main="pronostico", xlab="años", ylab="numero de pasajeros")
