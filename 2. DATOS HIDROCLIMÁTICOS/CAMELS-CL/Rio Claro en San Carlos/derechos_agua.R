#IMPORTANDO DATOS

library(readr)
cons_gw_wr_year <- read_csv("cons_gw_wr_year.csv")
cons_sf_wr_year <- read_csv("cons_sf_wr_year.csv")

agno = cons_gw_wr_year$year

DA_SUB = cons_gw_wr_year$`7320003`
DA_SUP = cons_sf_wr_year$`7320003`

DA_TOT = DA_SUB + DA_SUP

plot(agno,DA_TOT, 'line', xlab = "Año", ylab="Caudal demandado (l/s)", lwd="3", main = "Derechos de aprovechamiento de agua \n Estación Río Claro en San Carlos")
lines(agno, DA_SUB, lwd = "3", col = "red")
lines(agno, DA_SUP, lwd = "3", col = "blue")
legend("topleft",c("Derechos Totales","Derechos Subterraneos","Derechos Superficiales"),col=c("black","red","blue"),lwd="5")
