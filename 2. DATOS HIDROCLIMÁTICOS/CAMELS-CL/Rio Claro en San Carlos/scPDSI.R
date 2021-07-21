#install.packages("scPDSI")
library(scPDSI)
#install.packages("readr")
library(readr)
#install.packages("readxl")
library(readxl)

precip_cr2met_mon <- read_csv("precip_cr2met_mon.csv")
pet_hargreaves_mon <- read_csv("pet_hargreaves_mon.csv")

P<-precip_cr2met_mon$'7320003'
PE<-pet_hargreaves_mon$'7320003'
sc_pdsi <- pdsi(P, PE, start = 1979)

plot(sc_pdsi)
title('Indice de Severidad de Sequía de Palmer Auto-Calibrable \n Estación Río Claro en San Carlos',xlab='Año')

