
##################################################################
#######################                 ##########################
####################### SCRIPT RESAMPLE ##########################
#######################                 ##########################
##################################################################

library(raster)


setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_1971_1980/annualPET.tif")
mascara<-raster("./1971_1980/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/1971_1980")
writeRaster(sortida, "annualPETrepr.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_1971_1980/aridityIndexThornthwaite.tif")
mascara<-raster("./1971_1980/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/1971_1980")
writeRaster(sortida, "aridityIndexThornthwaite.tif", overwrite=T)
obreraster<-raster("./aridityIndexThornthwaite.tif")

KK<-stack(obreraster, mascara)

plot(KK)

#################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_1971_1980/climaticMoistureIndex.tif")
mascara<-raster("./1971_1980/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/1971_1980")
writeRaster(sortida, "climaticMoistureIndex.tif", overwrite=T)
obreraster<-raster("./climaticMoistureIndex.tif")

KK<-stack(obreraster, mascara)

plot(KK)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_1971_1980/continentality.tif")
mascara<-raster("./1971_1980/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/1971_1980")
writeRaster(sortida, "continentality.tif", overwrite=T)
obreraster<-raster("./continentality.tif")

KK<-stack(obreraster, mascara)

plot(KK)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_1971_1980/embergerQ.tif")
mascara<-raster("./1971_1980/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/1971_1980")
writeRaster(sortida, "embergerQ.tif", overwrite=T)
obreraster<-raster("./embergerQ.tif")

KK<-stack(obreraster, mascara)

plot(KK)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_1971_1980/growingDegDays0.tif")
mascara<-raster("./1971_1980/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/1971_1980")
writeRaster(sortida, "growingDegDays0.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_1971_1980/growingDegDays5.tif")
mascara<-raster("./1971_1980/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/1971_1980")
writeRaster(sortida, "growingDegDays5.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_1971_1980/maxTempColdest.tif")
mascara<-raster("./1971_1980/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/1971_1980")
writeRaster(sortida, "maxTempColdest.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_1971_1980/minTempWarmest.tif")
mascara<-raster("./1971_1980/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/1971_1980")
writeRaster(sortida, "minTempWarmest.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_1971_1980/monthCountByTemp10.tif")
mascara<-raster("./1971_1980/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/1971_1980")
writeRaster(sortida, "monthCountByTemp10.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_1971_1980/PETColdestQuarter.tif")
mascara<-raster("./1971_1980/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/1971_1980")
writeRaster(sortida, "PETColdestQuarter.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_1971_1980/PETDriestQuarter.tif")
mascara<-raster("./1971_1980/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/1971_1980")
writeRaster(sortida, "PETDriestQuarter.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_1971_1980/PETseasonality.tif")
mascara<-raster("./1971_1980/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/1971_1980")
writeRaster(sortida, "PETseasonality.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_1971_1980/PETWarmestQuarter.tif")
mascara<-raster("./1971_1980/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/1971_1980")
writeRaster(sortida, "PETWarmestQuarter.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_1971_1980/PETWettestQuarter.tif")
mascara<-raster("./1971_1980/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/1971_1980")
writeRaster(sortida, "PETWettestQuarter.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_1971_1980/thermicityIndex.tif")
mascara<-raster("./1971_1980/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/1971_1980")
writeRaster(sortida, "thermicityIndex.tif", overwrite=T)

##################################################################