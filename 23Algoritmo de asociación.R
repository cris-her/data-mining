install.packages("arules")
library(arules)
lista_super <- read.transactions(file="C:/Users/Archivo/Desktop/datos_groceries.csv",
                                 format="single",
                                 sep=",",
                                 cols=c("id_compra", "item"),
                                 rm.duplicates = TRUE)
lista_super
inspect(lista_super[1:48])
frecuencia_items <- itemFrequency(x=lista_super,type="relative")
frecuencia_items %>% sort(decreasing = TRUE) %>% head(5)
frecuencia_items <- itemFrequency(x = lista_super, type="absolute")
frecuencia_items %>% sort(decreasing = TRUE) %>% head(5)
itemFrequencyPlot(lista_super)
soporte <- 4 / dim(lista_super)[1]
grupo_elementos <- apriori(data = lista_super,
                           parameter = list(support=soporte,
                                            minlen=1,
                                            maxlen=15,
                                            confidence=0.70,
                                            target="rules"))
summary(grupo_elementos)
inspect(sort(x=grupo_elementos,decreasing = TRUE, by="confidence"))
principales <- sort(grupo_elementos, by="support", decreasing = TRUE)[1:4]
inspect(principales)