data(iris)
grupo <- kmeans(iris[,1:4],centers=4)
grupo
table(grupo$cluster_iris[,5])
plot(grupo$cluster)