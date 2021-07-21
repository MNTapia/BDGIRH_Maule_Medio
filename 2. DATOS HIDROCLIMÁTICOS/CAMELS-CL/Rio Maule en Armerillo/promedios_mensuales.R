#Importando los datos en excel
library(readxl)
PP_series <- read.csv("precip_cr2met_mon.csv")
PE_series <- read.csv("pet_hargreaves_mon.csv")
ES_series <- read.csv("q_m3s_mon.csv")
Tmax_series <- read.csv("tmax_cr2met_mon.csv")
Tmin_series <- read.csv("tmin_cr2met_mon.csv")
agno=PP_series$year
mes=PP_series$month
prec = PP_series$X7321002
evap = PE_series$X7321002
caud = ES_series$X7321002
Tmax = Tmax_series$X7321002
Tmin = Tmin_series$X7321002
aux = length(agno)/12
ene = 0
feb = 0
mar = 0
abr = 0
may = 0
jun = 0
jul = 0
ago = 0
sep = 0
oct = 0
nov = 0
dic = 0

for (i in c(1:length(agno))) {
  if (mes[i] == 1){
    ene = ene + prec[i]
  }
  if (mes[i] == 2){
    feb = feb + prec[i]
  }
  if (mes[i] == 3){
    mar = mar + prec[i]
  }
  if (mes[i] == 4){
    abr = abr + prec[i]
  }
  if (mes[i] == 5){
    may = may + prec[i]
  }
  if (mes[i] == 6){
    jun = jun + prec[i]
  }
  if (mes[i] == 7){
    jul = jul + prec[i]
  }
  if (mes[i] == 8){
    ago = ago + prec[i]
  }
  if (mes[i] == 9){
    sep = sep + prec[i]
  }
  if (mes[i] == 10){
    oct = oct + prec[i]
  }
  if (mes[i] == 11){
    nov = nov + prec[i]
  }
  if (mes[i] == 12){
    dic = dic + prec[i]
  }
}

for (i in c(1:length(agno))) {
  if (mes[i] == 1){
    ene = ene + evap[i]
  }
  if (mes[i] == 2){
    feb = feb + evap[i]
  }
  if (mes[i] == 3){
    mar = mar + evap[i]
  }
  if (mes[i] == 4){
    abr = abr + evap[i]
  }
  if (mes[i] == 5){
    may = may + evap[i]
  }
  if (mes[i] == 6){
    jun = jun + evap[i]
  }
  if (mes[i] == 7){
    jul = jul + evap[i]
  }
  if (mes[i] == 8){
    ago = ago + evap[i]
  }
  if (mes[i] == 9){
    sep = sep + evap[i]
  }
  if (mes[i] == 10){
    oct = oct + evap[i]
  }
  if (mes[i] == 11){
    nov = nov + evap[i]
  }
  if (mes[i] == 12){
    dic = dic + evap[i]
  }
}

for (i in c(1:length(agno))) {
  if (mes[i] == 1){
    ene = ene + caud[i]
  }
  if (mes[i] == 2){
    feb = feb + caud[i]
  }
  if (mes[i] == 3){
    mar = mar + caud[i]
  }
  if (mes[i] == 4){
    abr = abr + caud[i]
  }
  if (mes[i] == 5){
    may = may + caud[i]
  }
  if (mes[i] == 6){
    jun = jun + caud[i]
  }
  if (mes[i] == 7){
    jul = jul + caud[i]
  }
  if (mes[i] == 8){
    ago = ago + caud[i]
  }
  if (mes[i] == 9){
    sep = sep + caud[i]
  }
  if (mes[i] == 10){
    oct = oct + caud[i]
  }
  if (mes[i] == 11){
    nov = nov + caud[i]
  }
  if (mes[i] == 12){
    dic = dic + caud[i]
  }
}

for (i in c(1:length(agno))) {
  if (mes[i] == 1){
    ene = ene + Tmax[i]
  }
  if (mes[i] == 2){
    feb = feb + Tmax[i]
  }
  if (mes[i] == 3){
    mar = mar + Tmax[i]
  }
  if (mes[i] == 4){
    abr = abr + Tmax[i]
  }
  if (mes[i] == 5){
    may = may + Tmax[i]
  }
  if (mes[i] == 6){
    jun = jun + Tmax[i]
  }
  if (mes[i] == 7){
    jul = jul + Tmax[i]
  }
  if (mes[i] == 8){
    ago = ago + Tmax[i]
  }
  if (mes[i] == 9){
    sep = sep + Tmax[i]
  }
  if (mes[i] == 10){
    oct = oct + Tmax[i]
  }
  if (mes[i] == 11){
    nov = nov + Tmax[i]
  }
  if (mes[i] == 12){
    dic = dic + Tmax[i]
  }
}

for (i in c(1:length(agno))) {
  if (mes[i] == 1){
    ene = ene + Tmin[i]
  }
  if (mes[i] == 2){
    feb = feb + Tmin[i]
  }
  if (mes[i] == 3){
    mar = mar + Tmin[i]
  }
  if (mes[i] == 4){
    abr = abr + Tmin[i]
  }
  if (mes[i] == 5){
    may = may + Tmin[i]
  }
  if (mes[i] == 6){
    jun = jun + Tmin[i]
  }
  if (mes[i] == 7){
    jul = jul + Tmin[i]
  }
  if (mes[i] == 8){
    ago = ago + Tmin[i]
  }
  if (mes[i] == 9){
    sep = sep + Tmin[i]
  }
  if (mes[i] == 10){
    oct = oct + Tmin[i]
  }
  if (mes[i] == 11){
    nov = nov + Tmin[i]
  }
  if (mes[i] == 12){
    dic = dic + Tmin[i]
  }
}

ene=ene/aux
feb=feb/aux
mar=mar/aux
abr=abr/aux
may=may/aux
jun=jun/aux
jul=jul/aux
ago=ago/aux
sep=sep/aux
oct=oct/aux
nov=nov/aux
dic=dic/aux

c(ene,feb,mar,abr,may,jun,jul,ago,sep,oct,nov,dic)
