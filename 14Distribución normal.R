#install.packages("nortest")
#Anderson-Darling
ad.test(Esperanza_Hombres)
#Kolmogorov-Smirnov 
lillie.test(Esperanza_Hombres)
#x^2 de Pearson 
pearson.test(Esperanza_Hombres)
#Shapiro-Wilk 
shapiro.test(Esperanza_Hombres)
#Shapiro-Francia 
sf.test(Esperanza_Hombres)
#p-value < 0.5 = NO existe normalidad