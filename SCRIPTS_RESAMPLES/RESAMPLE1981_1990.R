
##################################################################
#######################                 ##########################
####################### SCRIPT RESAMPLE ##########################
#######################                 ##########################
##################################################################

library(raster)


setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_1981_1990/annualPET.tif")
mascara<-raster("./1981_1990/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/1981_1990")
writeRaster(sortida, "annualPETrepr.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_1981_1990/aridityIndexThornthwaite.tif")
mascara<-raster("./1981_1990/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/1981_1990")
writeRaster(sortida, "aridityIndexThornthwaite.tif", overwrite=T)

#################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_1981_1990/climaticMoistureIndex.tif")
mascara<-raster("./1981_1990/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/1981_1990")
writeRaster(sortida, "climaticMoistureIndex.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_1981_1990/continentality.tif")
mascara<-raster("./1981_1990/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/1981_1990")
writeRaster(sortida, "continentality.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_1981_1990/embergerQ.tif")
mascara<-raster("./1981_1990/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/1981_1990")
writeRaster(sortida, "embergerQ.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_1981_1990/growingDegDays0.tif")
mascara<-raster("./1981_1990/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/1981_1990")
writeRaster(sortida, "growingDegDays0.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_1981_1990/growingDegDays5.tif")
mascara<-raster("./1981_1990/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/1981_1990")
writeRaster(sortida, "growingDegDays5.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_1981_1990/maxTempColdest.tif")
mascara<-raster("./1981_1990/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/1981_1990")
writeRaster(sortida, "maxTempColdest.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_1981_1990/minTempWarmest.tif")
mascara<-raster("./1981_1990/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/1981_1990")
writeRaster(sortida, "minTempWarmest.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_1981_1990/monthCountByTemp10.tif")
mascara<-raster("./1981_1990/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/1981_1990")
writeRaster(sortida, "monthCountByTemp10.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_1981_1990/PETColdestQuarter.tif")
mascara<-raster("./1981_1990/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/1981_1990")
writeRaster(sortida, "PETColdestQuarter.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_1981_1990/PETDriestQuarter.tif")
mascara<-raster("./1981_1990/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/1981_1990")
writeRaster(sortida, "PETDriestQuarter.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_1981_1990/PETseasonality.tif")
mascara<-raster("./1981_1990/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/1981_1990")
writeRaster(sortida, "PETseasonality.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_1981_1990/PETWarmestQuarter.tif")
mascara<-raster("./1981_1990/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/1981_1990")
writeRaster(sortida, "PETWarmestQuarter.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_1981_1990/PETWettestQuarter.tif")
mascara<-raster("./1981_1990/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/1981_1990")
writeRaster(sortida, "PETWettestQuarter.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_1981_1990/thermicityIndex.tif")
mascara<-raster("./1981_1990/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/1981_1990")
writeRaster(sortida, "thermicityIndex.tif", overwrite=T)

##################################################################