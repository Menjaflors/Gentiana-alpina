   
            ###########################
            ############VIF############
            ###########################
             
             
library(raster)            
library(ecospat)
library(usdm)
taula<-read.csv("C:/Users/munozferrandiz/Desktop/NETES/LATAULABIO.csv", header = T, sep = ";")

ecospat.cor.plot(taula[, 3:25])
vif(taula[3:37])
vif(taula[,c(3:16,18:37)])   #treient BIO5
vif(taula[,c(3:16,18:36)])   #treient thermicityIndex
vif(taula[,c(3:16,18:28,30:36)])   #treient maxTempColdest
vif(taula[,c(3:16,18:21,23:28, 30:36)])   #treient anualPET
vif(taula[,c(3:4,6:16,18:21,23:28,30:36)])   #treient BIO11
vif(taula[,c(3,6:16,18:21,23:28,30:36)])   #treient BIO10
vif(taula[,c(3,7:16,18:21,23:28,30:36)])   #treient BIO12
vif(taula[,c(3,7:13,15,16,18:21,23:28,30:36)])   #treient BIO2
vif(taula[,c(3,7:13,15,16,19:21,23:28,30:36)])   #treient BIO6
vif(taula[,c(3,7:13,15,16,19:21,23:26,28,30:36)])   #treient growingDegDays0
vif(taula[,c(7:13,15,16,19:21,23:26,28,30:36)])   #treient BIO1
vif(taula[,c(7:13,15,16,19:21,23:25,28,30:36)])   #treient embergerQ
vif(taula[,c(7:10,12,13,15,16,19:21,23:25,28,30:36)])   #treient BIO17
vif(taula[,c(7:9,12,13,15,16,19:21,23:25,28,30:36)])   #treient BIO16
vif(taula[,c(7:9,12,13,15,16,20:21,23:25,28,30:36)])   #treient BIO7
vif(taula[,c(7:9,12,15,16,20:21,23:25,28,30:36)])   #treient BIO7
vif(taula[,c(7:9,12,16,20:21,23:25,28,30:36)])   #treient BIO19
vif(taula[,c(7,9,12,16,20:21,23:25,28,30:36)])   #treient BIO14
vif(taula[,c(7,9,12,16,20:21,23:25,30:36)])   #treient growingDegDays5
vif(taula[,c(7,9,12,16,21,23:25,30:36)])   #treient BIO8
vif(taula[,c(9,12,16,21,23:25,30:32,34:36)])   #treient PETDriestQuarter
vif(taula[,c(9,12,21,23:25,30:32,34:36)])   #treient BIO4
vif(taula[,c(9,12,21,23:25,30:32,35,36)])   #treient PETseasonality
vif(taula[,c(9,12,21,23,25,30:32,35,36)])   #treient PETseasonality

#Aquestes ?ltimes variables s?n les que no presenten multicolinearitat. Ara els posarem un m?xim de 
#correlaci?. 

vifcor(taula[,c(9,12,21,23,25,30:32,35,36)], th=.7) #Aqu? hem eliminat les variables que tenen presenten
#una correlaci? per sobre de 0.7. 

ecospat.cor.plot(taula[,c(9,12,21,23,25,30:32,35,36)])




library(raster)            
library(ecospat)
library(usdm)
taula1<-read.csv("D:/Bioclimatiques_rcp45/extract_ST_LATAULABIO_1961_2020.csv", header = T, sep = ";")

ecospat.cor.plot(taula[, 3:25])
vif(taula1[2:31])
vif(taula1[,c(3, 8, 10, 15, 17, 21:22,24,30)])   #treient BIO5


#Aquestes ?ltimes variables s?n les que no presenten multicolinearitat. Ara els posarem un m?xim de 
#correlaci?. 

vifcor(taula1[,c(3, 8, 10, 15, 17, 21:22,24,30)] , th=.7) #Aqu? hem eliminat les variables que tenen presenten
#una correlaci? per sobre de 0.7. 

ecospat.cor.plot(taula[,c(9,12,21,23,25,30:32,35,36)])
