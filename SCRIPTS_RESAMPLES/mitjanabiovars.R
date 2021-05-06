
###################################  MITJANA VARIABLES BIOCLIMÀTIQUES SIGNIFICATIVES  ##################################################
                                     ###############################################
                                     ###############################################

library(raster)
setwd("D:/MODEL1961_2000/Biovars")

bio91<-raster("./bio9_1961_1970.tif")
bio92<-raster("./bio9_1971_1980.tif")
bio93<-raster("./bio9_1981_1990.tif")
bio94<-raster("./bio9_1991_2000.tif")

w<-c(0.18, 0.22, 0.22, 0.38)
x<-stack(bio91, bio92, bio93, bio94)

mitjana<-weighted.mean(x=x, w=w, na.rm=FALSE)
plot(mitjana)
writeRaster(mitjana, filename = "./mitjanes/mitjanaBIO15_1961_2000.tif")

#Comprovacions
entrada<-raster("./mitjanes/mitjanaBIO9_1961_2000.tif")
plot(entrada)
bio91[5000,5000]
bio92[5000,5000]
bio93[5000,5000]
bio94[5000,5000]
mitjana[5000,5000]

##########################################################################

bio151<-raster("./bio15_1961_1970.tif")
bio152<-raster("./bio15_1971_1980.tif")
bio153<-raster("./bio15_1981_1990.tif")
bio154<-raster("./bio15_1991_2000.tif")

w<-c(0.18, 0.22, 0.22, 0.38)
x<-stack(bio151, bio152, bio153, bio154)

mitjana<-weighted.mean(x=x, w=w, na.rm=FALSE)
plot(mitjana)
writeRaster(mitjana, filename = "./mitjanes/mitjanaBIO15_1961_2000.tif")

bio151[5000,5000]
bio152[5000,5000]
bio153[5000,5000]
bio154[5000,5000]
mitjana[5000,5000]


###########################################################################

PETWettestQuarter1<-raster("./PETWettestQuarter_1961_1970.tif")
PETWettestQuarter2<-raster("./PETWettestQuarter_1971_1980.tif")
PETWettestQuarter3<-raster("./PETWettestQuarter_1981_1990.tif")
PETWettestQuarter4<-raster("./PETWettestQuarter_1991_2000.tif")

w<-c(0.18, 0.22, 0.22, 0.38)
x<-stack(PETWettestQuarter1, PETWettestQuarter2, PETWettestQuarter3, PETWettestQuarter4)

mitjana<-weighted.mean(x=x, w=w, na.rm=FALSE)
plot(mitjana)
writeRaster(mitjana, filename = "./mitjanes/mitjanaPETWettestQuarter_1961_2000.tif")

#plot(PETWettestQuarter1)
#plot(PETWettestQuarter2)
#plot(PETWettestQuarter3)
#plot(PETWettestQuarter4)
#plot(mitjana)
###########################################################################

Bio181<-raster("./Bio18_1961_1970.tif")
Bio182<-raster("./Bio18_1971_1980.tif")
Bio183<-raster("./Bio18_1981_1990.tif")
Bio184<-raster("./Bio18_1991_2000.tif")

w<-c(0.18, 0.22, 0.22, 0.38)
x<-stack(Bio181, Bio182, Bio183, Bio184)

mitjana<-weighted.mean(x=x, w=w, na.rm=FALSE)
plot(mitjana)
writeRaster(mitjana, filename = "./mitjanes/mitjanaBio18_1961_2000.tif")

##########################################################################

PETColdestQuarter1<-raster("./PETColdestQuarter_1961_1970.tif")
PETColdestQuarter2<-raster("./PETColdestQuarter_1971_1980.tif")
PETColdestQuarter3<-raster("./PETColdestQuarter_1981_1990.tif")
PETColdestQuarter4<-raster("./PETColdestQuarter_1991_2000.tif")

w<-c(0.18, 0.22, 0.22, 0.38)
x<-stack(PETColdestQuarter1, PETColdestQuarter2, PETColdestQuarter3, PETColdestQuarter4)

mitjana<-weighted.mean(x=x, w=w, na.rm=FALSE)
plot(mitjana)
writeRaster(mitjana, filename = "./mitjanes/mitjanaPETColdestQuarter_1961_2000.tif")

##########################################################################

monthCountByTemp101<-raster("./monthCountByTemp10_1961_1970.tif")
monthCountByTemp102<-raster("./monthCountByTemp10_1971_1980.tif")
monthCountByTemp103<-raster("./monthCountByTemp10_1981_1990.tif")
monthCountByTemp104<-raster("./monthCountByTemp10_1991_2000.tif")

w<-c(0.18, 0.22, 0.22, 0.38)
x<-stack(monthCountByTemp101, monthCountByTemp102, monthCountByTemp103, monthCountByTemp104)

mitjana<-weighted.mean(x=x, w=w, na.rm=FALSE)
plot(mitjana)
writeRaster(mitjana, filename = "./mitjanes/mitjanamonthCountByTemp10_1961_2000.tif")

##########################################################################

continentality1<-raster("./continentality_1961_1970.tif")
continentality2<-raster("./continentality_1971_1980.tif")
continentality3<-raster("./continentality_1981_1990.tif")
continentality4<-raster("./continentality_1991_2000.tif")

w<-c(0.18, 0.22, 0.22, 0.38)
x<-stack(continentality1, continentality2, continentality3, continentality4)

mitjana<-weighted.mean(x=x, w=w, na.rm=FALSE)
plot(mitjana)
writeRaster(mitjana, filename = "./mitjanes/mitjanacontinentality_1961_2000.tif")

##########################################################################

aridityIndexThornthwaite1<-raster("./aridityIndexThornthwaite_1961_1970.tif")
aridityIndexThornthwaite2<-raster("./aridityIndexThornthwaite_1971_1980.tif")
aridityIndexThornthwaite3<-raster("./aridityIndexThornthwaite_1981_1990.tif")
aridityIndexThornthwaite4<-raster("./aridityIndexThornthwaite_1991_2000.tif")

w<-c(0.18, 0.22, 0.22, 0.38)
x<-stack(aridityIndexThornthwaite1, aridityIndexThornthwaite2, aridityIndexThornthwaite3, aridityIndexThornthwaite4)

mitjana<-weighted.mean(x=x, w=w, na.rm=FALSE)
plot(mitjana)
writeRaster(mitjana, filename = "./mitjanes/mitjanaaridityIndexThornthwaite_1961_2000.tif")