install.packages("c50", dependencies=TRUE)
library(c50)
data(iris)
db<-iris
View(db)
set.seed(120)
dimension.total <- nrow(db)
dimension.entreno <- round(dimension.total*0.7)
db.indices <- sample(1:dimension.total,size=dimension.entreno)
db.entreno <- db[db.indices,]
modelo <- c5.0(Species -.,data=db.entreno)
summary(modelo)
plot(modelo)