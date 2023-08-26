data(iris)
View(iris)
iris_n <- iris[1:100, c(1,3,5)]
names(iris_n)<-c("Sepalo", "Petalo", "Specie")
head(iris_n)
library(ggplot2)
ggplot(iris_n,aes(x=sepal, y=petal))+
  geom_point(aes(colour=species,shape=species), size=3)+
  xlab("Longitud del sepalo")+
  ylab("Longitud del petalo")+
  ggtitle("Especies vs longitud de sepalos y petalos")
iris_n[,4]<-1
iris_n[iris_n[,3]=="setosa",4]<- -1
x<- iris_n[,c(1,2)]
y<- iris_n[,4]
perceptron <- function(x,y,tasa_aprendizaje,n_aproximaciones){
  wvector <- rep(0,dim(x)[2]+1)
  error <- rep(0,n_aproximaciones)
  for (jj in 1:n_aproximaciones) {
    for (ii in 1:length(y)) {
      z<-sum(wvector[2:length(wvector)]*as.numeric(x[ii,])+wvector[1])
      if (z<0) {
        ypred<- -1
      } else{
        ypred<- 1
      }
      wdif <- tasa_aprendizaje * (y[ii]-ypred)*
        c(1,as.numeric(x[ii,]))
      wvector <- wvector + wdif
      if ((y[ii]-ypred)!=0.0) {
        error[jj]<-error[jj]+1
      }
    }
  }
  return(error)
}
perceptron(x,y,0.2,10)
plot(1:10,err,type="i",lwd=2,col="red",xlab="aproximaciones #",
     ylab="error")
title("Error vs aproximaciones - curva de aprendizaje = 1")
