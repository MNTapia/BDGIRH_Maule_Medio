#install.packages("scPDSI")
library(scPDSI)
library(readr)
precip_cr2met_mon <- read_csv("precip_cr2met_mon.csv")
pet_hargreaves_mon <- read_csv("pet_hargreaves_mon.csv")

P<-precip_cr2met_mon$`7322001`
PE<-pet_hargreaves_mon$`7322001`
sc_pdsi <- pdsi(P, PE, start = 1979)

plot(sc_pdsi)
title('Indice de Severidad de Sequ�a de Palmer Auto-Calibrable \n Estaci�n R�o Maule en Longitudinal',xlab='A�o')

