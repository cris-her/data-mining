data("iris")
iris_m <- iris[1:100,c(2,4,5)]
iris2_m <- as_data_frame(iris_m)
library("dplyr")
iris2_m = mutate(iris2_m,var_intermedia=rep(0:1, c(50,50)))
View(iris2_m)
iris2_m$var_intermedia <- iris2_m$var_intermedia==0
modelo<-gim(var_intermedia=Sepal.width+Petal.width, data=iris2_m,family=binomial())
summary(modelo)