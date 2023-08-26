data(iris)
datos_flores<-iris
View(datos_flores)
datos_flores[,1:4] <- scale(datos_flores[,1:4])
distancia_euclidiana <- dist(datos_flores[,1:4])
agrupamiento <- hclust(distancia_euclidiana)
(kgrupos <- cutree(agrupamiento,k=1))
plot(agrupamiento,hang=1,cex=0.8,labels=datos_flores[,5],main="Analisis cluster")
rect.hclust(agrupamiento,k=25,border="green")