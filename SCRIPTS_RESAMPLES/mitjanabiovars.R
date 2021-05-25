
###################################  MITJANA VARIABLES BIOCLIM?TIQUES SIGNIFICATIVES  ##################################################
                                     ###############################################
                                     ###############################################

library(raster)
setwd("D:/MODEL1961_2000/Biovars")

bio91<-raster("./bio9_1961_1970.tif")
bio92<-raster("./bio9_1971_1980.tif")
bio93<-raster("./bio9_1981_1990.tif")
bio94<-raster("./bio9_1991_2000.tif")
bio95<-raster("./bio9_2001_2010.tif")
bio96<-raster("./bio9_2011_2020.tif")

w<-c(0.02, 0.035, 0.04, 0.05, 0.43, 0.425)
x<-stack(bio91, bio92, bio93, bio94, bio95, bio96)

mitjana<-weighted.mean(x=x, w=w, na.rm=FALSE)
plot(mitjana)
writeRaster(mitjana, filename = "./mitjanes/mitjanaBio9_1961_2020.tif")

#Comprovacions
entrada<-raster("./mitjanes/mitjanaBIO9_1961_2020.tif")
plot(entrada)
bio91[5000,5000]
bio92[5000,5000]
bio93[5000,5000]
bio94[5000,5000]
bio95[5000,5000]
bio96[5000,5000]
entrada[5000,5000]

##########################################################################

bio151<-raster("./bio15_1961_1970.tif")
bio152<-raster("./bio15_1971_1980.tif")
bio153<-raster("./bio15_1981_1990.tif")
bio154<-raster("./bio15_1991_2000.tif")
bio155<-raster("./bio15_2001_2010.tif")
bio156<-raster("./bio15_2011_2020.tif")

w<-c(0.02, 0.035, 0.04, 0.05, 0.43, 0.425)
x<-stack(bio151, bio152, bio153, bio154, bio155, bio156)

mitjana<-weighted.mean(x=x, w=w, na.rm=FALSE)
plot(mitjana)
writeRaster(mitjana, filename = "./mitjanes/mitjanaBIO15_1961_2020.tif")

bio151[5000,5000]
bio152[5000,5000]
bio153[5000,5000]
bio154[5000,5000]
bio155[5000,5000]
bio156[5000,5000]
mitjana[5000,5000]



###########################################################################

Bio131<-raster("./Bio13_1961_1970.tif")
Bio132<-raster("./Bio13_1971_1980.tif")
Bio133<-raster("./Bio13_1981_1990.tif")
Bio134<-raster("./Bio13_1991_2000.tif")
Bio135<-raster("./Bio13_2001_2010.tif")
Bio136<-raster("./Bio13_2011_2020.tif")

w<-c(0.02, 0.035, 0.04, 0.05, 0.43, 0.425)
x<-stack(Bio131, Bio132, Bio133, Bio134, Bio135, Bio136)

mitjana<-weighted.mean(x=x, w=w, na.rm=FALSE)
plot(mitjana)
writeRaster(mitjana, filename = "./mitjanes/mitjanaBio13_1961_2020.tif")

##########################################################################

Bio21<-raster("./bio2_1961_1970.tif")
Bio22<-raster("./bio2_1971_1980.tif")
Bio23<-raster("./bio2_1981_1990.tif")
Bio24<-raster("./bio2_1991_2000.tif")
Bio25<-raster("./bio2_2001_2010.tif")
Bio26<-raster("./bio2_2011_2020.tif")


w<-c(0.02, 0.035, 0.04, 0.05, 0.43, 0.425)
x<-stack(Bio21, Bio22, Bio23, Bio24, Bio25, Bio26)

mitjana<-weighted.mean(x=x, w=w, na.rm=FALSE)
plot(mitjana)
writeRaster(mitjana, filename = "./mitjanes/mitjanaPETColdestQuarter_1961_2000.tif")

##########################################################################

monthCountByTemp101<-raster("./monthCountByTemp10_1961_1970.tif")
monthCountByTemp102<-raster("./monthCountByTemp10_1971_1980.tif")
monthCountByTemp103<-raster("./monthCountByTemp10_1981_1990.tif")
monthCountByTemp104<-raster("./monthCountByTemp10_1991_2000.tif")
monthCountByTemp105<-raster("./monthCountByTemp10_2001_2010.tif")
monthCountByTemp106<-raster("./monthCountByTemp10_2011_2020.tif")

w<-c(0.02, 0.035, 0.04, 0.05, 0.43, 0.425)
x<-stack(monthCountByTemp101, monthCountByTemp102, monthCountByTemp103, monthCountByTemp104, monthCountByTemp105, monthCountByTemp106)

mitjana<-weighted.mean(x=x, w=w, na.rm=FALSE)
plot(mitjana)
writeRaster(mitjana, filename = "./mitjanes/mitjanamonthCountByTemp10_1961_2020.tif")

##########################################################################

continentality1<-raster("./continentality_1961_1970.tif")
continentality2<-raster("./continentality_1971_1980.tif")
continentality3<-raster("./continentality_1981_1990.tif")
continentality4<-raster("./continentality_1991_2000.tif")
continentality5<-raster("./continentality_2001_2010.tif")
continentality6<-raster("./continentality_2011_2020.tif")

w<-c(0.02, 0.035, 0.04, 0.05, 0.43, 0.425)
x<-stack(continentality1, continentality2, continentality3, continentality4, continentality5, continentality6)

mitjana<-weighted.mean(x=x, w=w, na.rm=FALSE)
plot(mitjana)
writeRaster(mitjana, filename = "./mitjanes/mitjanacontinentality_1961_2020.tif")

##########################################################################

aridityIndexThornthwaite1<-raster("./aridityIndexThornthwaite_1961_1970.tif")
aridityIndexThornthwaite2<-raster("./aridityIndexThornthwaite_1971_1980.tif")
aridityIndexThornthwaite3<-raster("./aridityIndexThornthwaite_1981_1990.tif")
aridityIndexThornthwaite4<-raster("./aridityIndexThornthwaite_1991_2000.tif")
aridityIndexThornthwaite5<-raster("./aridityIndexThornthwaite_2001_2010.tif")
aridityIndexThornthwaite6<-raster("./aridityIndexThornthwaite_2011_2020.tif")

w<-c(0.02, 0.035, 0.04, 0.05, 0.43, 0.425)
x<-stack(aridityIndexThornthwaite1, aridityIndexThornthwaite2, aridityIndexThornthwaite3, aridityIndexThornthwaite4,
         aridityIndexThornthwaite5, aridityIndexThornthwaite6)

mitjana<-weighted.mean(x=x, w=w, na.rm=FALSE)
plot(mitjana)
writeRaster(mitjana, filename = "./mitjanes/mitjanaaridityIndexThornthwaite_1961_2020.tif")