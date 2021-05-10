
                        #Corregir el biaix a l'hora de fer background samplings# 

library(sf)
library(maptools)
library(raster)
library(spatstat)
setwd("D:/quercus/Partage/Pep/Gentiana_Alpina_David/background_samplings")

#Partim de que a partir de les observacions (que es poden trobar a un nivell per sobre del wd), he creat un
#sf amb els punts d'observació. L'objectiu és aconseguir una superfície (de Kernel?) amb un valor de probabilitat
#en cada punt, segons la densitat d'observacions. 

s  <- st_read("./KK.shp")  #Pot ser algun problema de projecció aquí?
sp  <- as.ppp(s)
marks(sp) <- NULL

#Tant amb rescale com sense, el plot i el problema és el mateix: m'ho divideix tot en una graella de 128x128,
#que no són ni píxels quadrats. Si ho tingués en la resolució que toca (30x30m), ja ho tindria resolt. 
#El paràmetre SIGMA de dins de la funció density, sembla que permeti això, però no l'acabo d'entendre... i els
#píxels segueixen sortint més amples que llargs.... per més que posi valors molt petits, que seria el més 
#lògic. 
#densityAdaptiveKernel.ppp(sp, at="pixels" ) és la mateixa funció que density, crec. 

####Amb rescale####

s.km <- rescale(sp, s=0.0009, "km")
K1 <- density(s.km)
plot(K1, main=NULL, las=1)

####Sense rescale####

#s.km <- rescale(sp, s=0.0009, "km")
K1 <- density(sp, sigma=0.5)
plot(K1, main=NULL, las=1)

#Per a guardar els resultats:

matriu<-as.matrix.im(K1)
matriu <- as.data.frame(matriu)
write.csv(matriu, "./matriubackground.csv")



