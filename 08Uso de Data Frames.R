#Condiciones data frame
#Datos del mismo tipo
#Vectores de la misma longitud
#Matrices con mismo numero de filas

alumno <- c("Paula Millan", "Marco Camarena", "Aaron Camango", "Daniela Bello", "Carlos Ramirez", "Luis Pacheco")
num_cuenta <- c(4040,5645, 1423, 1478, 9567, 6723)
genero <- c("F","M","M","F","M","M")
semestre <- c(5,5,4,4,5,4)
area_de_especializacion <- c("Fisica nuclear", "Fisica experimental", "Fisica experimental", "Fisica nuclear", "Fisica teorica ", "Fisica teorica")
carga_academica <- list(Basica-c("FISICA", "LABORATORIO AVANZADO", "MECANICA CLASICA", "FISICA ESTADISTICA", "MECANICA CUANTICA 1", "MECANICA CUANTICA 2"),optativa-c("FISICA o", "LABORATORIO o", "MECANICA o", "FISICA ESTADISTICA o", "MECANICA o 1", "MECANICA o 2"))
str(carga_academica)
datos_alumnos_posgrado<-data.frame(alumno,num_cuenta,genero,semestre,area_de_especializacion,carga_academica)
datos_alumnos_posgrado
str(datos_alumnos_posgrado)
dim(datos_alumnos_posgrado)
View(datos_alumnos_posgrado)
datos_alumnos_posgrado[[6]][1]
datos_alumnos_posgrado[5,1]
datos_alumnos_posgrado[3]
datos_alumnos_posgrado[5,]