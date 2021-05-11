
                        #Corregir el biaix a l'hora de fer background samplings# 

library(sf)
library(maptools)
library(raster)
library(spatstat)
library(sp)                       
library(spatialEco)



setwd("C:/Users/munozferrandiz/Desktop/NETES/prova_sf")
data1<-read.csv("./GENTIANA_ALPINAfiltrada.csv")                     # Si ho hagués de fer per dècades, una per una. 

# prepare coordinates, data, and proj4string
coords <- data1[ , c("longitude", "latitude")]   # coordinates
data   <- data1
crs    <- CRS("+proj=longlat +datum=WGS84 +ellps=WGS84 +towgs84=0,0,02") # proj4string of coords

# make the SpatialPointsDataFrame object
datatrans<-spdf <- SpatialPointsDataFrame(coords      = coords,
                                          data        = data, 
                                          proj4string = crs)
class(datatrans)
pt.kde <- sp.kde(x = datatrans, bw = 1, standardize = T, 
                 newdata = obre, scale.factor = 1 )
writeRaster(pt.kde, "./Provaraster.tif")
plot(pt.kde)


############################COSES ANTERIORS SENSE RESULTAT###########################################

#setwd("D:/quercus/Partage/Pep/Gentiana_Alpina_David/background_samplings")
setwd("C:/Users/munozferrandiz/Desktop/NETES/prova_sf")
#Partim de que a partir de les observacions (que es poden trobar a un nivell per sobre del wd), he creat un
#sf amb els punts d'observaciÃ³. L'objectiu Ã©s aconseguir una superfÃ?cie (de Kernel?) amb un valor de probabilitat
#en cada punt, segons la densitat d'observacions. 

s  <- st_read("./KK.shp")#Pot ser algun problema de projecciÃ³ aquÃ??
sp  <- as.ppp(s)
marks(sp) <- NULL

#Tant amb rescale com sense, el plot i el problema Ã©s el mateix: m'ho divideix tot en una graella de 128x128,
#que no sÃ³n ni pÃ?xels quadrats. Si ho tinguÃ©s en la resoluciÃ³ que toca (30x30m), ja ho tindria resolt. 
#El parÃ metre SIGMA de dins de la funciÃ³ density, sembla que permeti aixÃ², perÃ² no l'acabo d'entendre... i els
#pÃ?xels segueixen sortint mÃ©s amples que llargs.... per mÃ©s que posi valors molt petits, que seria el mÃ©s 
#lÃ²gic. 
#densityAdaptiveKernel.ppp(sp, at="pixels" ) Ã©s la mateixa funciÃ³ que density, crec. 

####Amb rescale####

s.km <- rescale(sp, 0.00000729)
s.km <- rescale(sp, 0.00027)
K1 <- density(s.km)
plot(K1, main=NULL, las=1)

####Sense rescale####

#s.km <- rescale(sp, s=0.0009, "km")
K1 <- density(sp)
plot(K1, main=NULL, las=1)    ###Crec que aquests valors de densitat són 1400 punts per cada ºquadrat. 

#Per a guardar els resultats:

matriu<-as.matrix.im(K1)
matriu <- as.data.frame(matriu)
write.csv(matriu, "./matriubackground2.csv")




area<-read.csv("./AREA_ESTUDIKK.csv")
area<-st_as_sf(area, coords = c("longitude", "latitude"))
st_write(area, "./area.shp")

s  <- st_read("./area.shp")
s<-raster("D:/MODEL1961_2000/Biovars/mitjanes/mitjanaBio18_1961_2000.tif")
w  <- as.owin(s)
w.km <- rescale(w, 1000) 

#plot(quadratcount(sp, nx=5641, ny=17639)) No crec que funcionés, però podria ser una opció. 
