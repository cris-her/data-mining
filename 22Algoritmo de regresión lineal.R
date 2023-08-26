data("iris")
iris_m <- iris[1:50,c(1,4)]
View(iris_m)
plot(iris_m)
regresion_lineal<-lm(data=iris,formula = sepal.Length ~ petal.width)
names(regresion_lineal)
summary(regresion_lineal)
confint(regresion_lineal,level = 0.95)
plot(regresion_lineal)
#Ajuste: 1 o -1= Variables relacionadas fuertemente
#Ajuste: 0 = Mal ajuste