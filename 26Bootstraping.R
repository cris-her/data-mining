A<-c(23,69,120,95,84,76,41,59,12,44,52,94,87,121,124,29,64,116,132,57)
library(boot)
F<-function(A,d){return(mean(A[d]))}
#F<-function(A,d){return(var(A[d]))}
BS <- boot(A,F,R=100000)
boot.ci(BS,conf=0.99,type="basic")