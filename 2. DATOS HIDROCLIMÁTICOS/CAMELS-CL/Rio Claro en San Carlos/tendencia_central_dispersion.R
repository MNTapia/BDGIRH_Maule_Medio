#Importando los datos en excel
library(readxl)
PP_series <- read.csv("precip_cr2met_mon.csv")
PE_series <- read.csv("pet_hargreaves_mon.csv")
ES_series <- read.csv("q_m3s_mon.csv")
TMin_series <- read.csv("tmin_cr2met_mon.csv")
TMax_series <- read.csv("tmax_cr2met_mon.csv")

#definindo la variable de precipitacion buscando en la columna correcta (valor)
agno=PP_series$year
prec = PP_series$X7320003
evap = PE_series$X7320003
caud = ES_series$X7320003
tmin = TMin_series$X7320003
tmax = TMax_series$X7320003
aux = c(1:length(agno))

#Tendencia central


#Promedio

#PRECIPITACION
pp_promedio = mean(prec)              #promedio
recta_pp = c(1:length(agno))  #creando el vector con el mismo tamaño de los datos
for (ii in 1:length(agno)) {        #substituyendo cada valor por el promedio
  recta_pp[ii] = pp_promedio
}
plot(1979+aux/12,prec,"line",xlab="Año",ylab="Precipitacion (mm)",main="Estación Río Claro en San Carlos")
lines(1979+aux/12,recta_pp,lwd="3",col="red")
legend("topright",c("Promedio"), col = "red", lwd="5")


#EVAPOTRANSPIRACION
pe_promedio = mean(evap)              #promedio
recta_pe = c(1:length(agno))  #creando el vector con el mismo tamaño de los datos
for (ii in 1:length(agno)) {        #substituyendo cada valor por el promedio
  recta_pe[ii] = pe_promedio
}
plot(1979+aux/12,evap,"line",xlab="Año",ylab="Evapotranspiración (mm)",main="Estación Río Claro en San Carlos")
lines(1979+aux/12,recta_pe,lwd="3",col="red")
legend("topright",c("Promedio"), col = "red", lwd="5")

#CAUDAL
es_promedio = mean(caud)              #promedio
recta_es = c(1:length(agno))  #creando el vector con el mismo tamaño de los datos
for (ii in 1:length(agno)) {        #substituyendo cada valor por el promedio
  recta_es[ii] = es_promedio
}
plot(1979+aux/12,caud,"line",xlab="Año",ylab="Caudal (m3/s)",main="Estación Río Claro en San Carlos")
lines(1979+aux/12,recta_es,lwd="3",col="red")
legend("topright",c("Promedio"), col = "red", lwd="5")

#Mediana

#PRECIPITACION
pp_mediana = median(prec)            #mediana
recta_mediana_pp = c(1:length(agno))  #creando el vector con el mismo tamaÃ±o de los datos
for (jj in 1:length(agno)) {       #substituindo cada valor por la mediana
  recta_mediana_pp[jj] = pp_mediana
}
lines(aux,recta_mediana_pp,lwd="3",col="blue")

#EVAPOTRANSPIRACION
pe_mediana = median(evap)            #mediana
recta_mediana_pe = c(1:length(agno))  #creando el vector con el mismo tamaÃ±o de los datos
for (jj in 1:length(agno)) {       #substituindo cada valor por la mediana
  recta_mediana_pe[jj] = pe_mediana
}
lines(aux,recta_mediana_pe,lwd="3",col="blue")

#TEMPERATURA

plot(1979+aux/12,tmax,"line",xlab="Año",ylab=" Temperatura (°C)",main="Estación Río Claro en San Carlos",ylim = c(-10,30),lwd="1",col="red")
lines(1979+aux/12,tmin,lwd="1",col="blue")
legend("topright",c("Temperatura máxima","Temperatura mínima"),col=c("red","blue"),lwd="2")


#Moda
#install.packages("modeest")       #instalando el paquete para hacer la moda
library(modeest) #importando el paquete para hacer la moda

#PRECIPITACION
pp_moda = mlv(prec)                  #moda
recta_moda_pp = c(1:length(agno))
for (kk in 1:length(agno)) {
  recta_moda_pp[kk]=pp_moda
}

lines(aux,recta_moda_pp,lwd="3",col="green")

#EVAPOTRANSPIRACION
pe_moda = mlv(evap)                  #moda
recta_moda_pe = c(1:length(agno))
for (kk in 1:length(agno)) {
  recta_moda_pe[kk]=pe_moda
}

lines(aux,recta_moda_pe,lwd="3",col="green")


#Dispersion
###################

#Variancia

#PRECIPITACION
pp_variancia = var(prec)                 #variancia

#EVAPOTRANSPIRACION
pe_variancia = var(evap)                 #variancia


#Desviacion estandar

#PRECIPITACION
pp_desv_est = sd(prec)                   #desviacion estandar

#EVAPOTRANSPIRACION
pe_desv_Est = sd(evap)                   #desviacion estandar


#Boxplot

#PRECIPITACION
boxplot(prec)

#EVPAOTRANSPIRACION
boxplot(evap)

#Asimetria

#PRECIPITACION
skewness(prec)

#EVAPOTRANSPIRACION
skewness(evap)

#Distribucion de Frecuencia

#PRECIPITACION
h= hist(prec,main="",ylab = "", xlab = "",axes=TRUE)
par(new=TRUE)
plot(density(prec),ylab = "Frecuencia", xlab = "Precipitación (mm)", axes=FALSE,lwd=2.5, main = "Histograma Estación Río Claro en San Carlos")
#haciendo las rectas verticales de moda, mediana y promedio
freq = c(0:2)
pp_recta_promedio_y = c(1:3)
pp_recta_mediana_y  = c(1:3)
pp_recta_moda_y     = c(1:3)

for (ll in 1:3) {
  pp_recta_promedio_y[ll] = pp_promedio
  pp_recta_mediana_y[ll]  = pp_mediana
  pp_recta_moda_y[ll]     = pp_moda
}

lines(pp_recta_promedio_y,freq,lwd="2",col="red")
lines(pp_recta_mediana_y,freq,lwd="2",col="blue")
lines(pp_recta_moda_y,freq,lwd="2",col="green")
legend("topright",c("Promedio","Mediana","Moda"),col=c("red","blue","green"),lwd="5")

#EVAPOTRANSPIRACION
h=hist(evap,main="",ylab = "", xlab = "",axes=TRUE, breaks = 15)
par(new=TRUE)
plot(density(evap),ylab = "Frecuencia", xlab = "Evapotranspiración (mm)", axes=FALSE,lwd=2.5, main = "Histograma Estación Río Claro en San Carlos")
freq = c(0:2)
pe_recta_promedio_y = c(1:3)
pe_recta_mediana_y  = c(1:3)
pe_recta_moda_y     = c(1:3)

for (ll in 1:3) {
  pe_recta_promedio_y[ll] = pe_promedio
  pe_recta_mediana_y[ll]  = pe_mediana
  pe_recta_moda_y[ll]     = pe_moda
}

lines(pe_recta_promedio_y,freq,lwd="2",col="red")
lines(pe_recta_mediana_y,freq,lwd="2",col="blue")
lines(pe_recta_moda_y,freq,lwd="2",col="green")
legend("topright",c("Promedio","Mediana","Moda"),col=c("red","blue","green"),lwd="5")

#TEMPERATURA
h=hist(tmax,main="Histograma Estación Río Claro en San Carlos", col=rgb(1, 0, 0), ylab = "Frecuencia", xlab = "Temperatura (°C)",axes=TRUE, xlim=c(-10,30))
hist(tmin,add=TRUE,axes=TRUE,col=rgb(0, 0, 1, alpha = 0.5),main="Histograma Estación Río Claro en San Carlos",ylab = "Frecuencia", xlab = "Temperatura (°C)", breaks = 15)
legend("topleft",c("T° Máxima","T° Mínima"),col=c("red","blue"),lwd="2")
