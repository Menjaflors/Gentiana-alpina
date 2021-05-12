
                        #Corregir el biaix a l'hora de fer background samplings# 

library(sf)
library(maptools)
library(raster)
library(spatstat)
library(sp)                       
library(spatialEco)
library(raster)


setwd("C:/Users/munozferrandiz/Desktop/NETES/Decades")
data1<-read.csv("./GENTIANA_ALPINAfiltrada.csv")    # Si ho hagu?s de fer per d?cades, una per una. 
obre<-raster("./bio8.tif")

# prepare coordinates, data, and proj4string
coords <- data1[ , c("longitude", "latitude")]   # coordinates
data   <- data1
crs    <- CRS("+proj=longlat +datum=WGS84 +ellps=WGS84 +towgs84=0,0,0") # proj4string of coords

# make the SpatialPointsDataFrame object
datatrans<-spdf <- SpatialPointsDataFrame(coords      = coords,
                                          data        = data, 
                                          proj4string = crs)
class(datatrans)
pt.kde <- sp.kde(x = datatrans, bw = 5, standardize = T, 
                 newdata = obre, scale.factor = 1 )
writeRaster(pt.kde, "./Provaraster1961_50.tif", overwrite=T)
plot(pt.kde)


############################COSES ANTERIORS SENSE RESULTAT###########################################

#setwd("D:/quercus/Partage/Pep/Gentiana_Alpina_David/background_samplings")
setwd("C:/Users/munozferrandiz/Desktop/NETES/prova_sf")
#Partim de que a partir de les observacions (que es poden trobar a un nivell per sobre del wd), he creat un
#sf amb els punts d'observació. L'objectiu és aconseguir una superf??cie (de Kernel?) amb un valor de probabilitat
#en cada punt, segons la densitat d'observacions. 

s  <- st_read("./KK.shp")#Pot ser algun problema de projecció aqu???
sp  <- as.ppp(s)
marks(sp) <- NULL

#Tant amb rescale com sense, el plot i el problema és el mateix: m'ho divideix tot en una graella de 128x128,
#que no són ni p??xels quadrats. Si ho tingués en la resolució que toca (30x30m), ja ho tindria resolt. 
#El paràmetre SIGMA de dins de la funció density, sembla que permeti això, però no l'acabo d'entendre... i els
#p??xels segueixen sortint més amples que llargs.... per més que posi valors molt petits, que seria el més 
#lògic. 
#densityAdaptiveKernel.ppp(sp, at="pixels" ) és la mateixa funció que density, crec. 

####Amb rescale####

s.km <- rescale(sp, 0.00000729)
s.km <- rescale(sp, 0.00027)
K1 <- density(s.km)
plot(K1, main=NULL, las=1)

####Sense rescale####

#s.km <- rescale(sp, s=0.0009, "km")
K1 <- density(sp)
plot(K1, main=NULL, las=1)    ###Crec que aquests valors de densitat s?n 1400 punts per cada ?quadrat. 

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

#plot(quadratcount(sp, nx=5641, ny=17639)) No crec que funcion?s, per? podria ser una opci?. 
