
##################################################################
#######################                 ##########################
####################### SCRIPT RESAMPLE ##########################
#######################                 ##########################
##################################################################

library(raster)


setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_1961_1970/annualPET.tif")
mascara<-raster("./1961_1970/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/1961_1970")
writeRaster(sortida, "annualPETrepr.tif", overwrite=T)

obre<-raster("./annualPETrepr.tif")
plot(obre)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_1961_1970/aridityIndexThornthwaite.tif")
mascara<-raster("./1961_1970/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/1961_1970")
writeRaster(sortida, "aridityIndexThornthwaite.tif", overwrite=T)
obreraster<-raster("./aridityIndexThornthwaite.tif")

KK<-stack(obreraster, mascara)

plot(KK)

#################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_1961_1970/climaticMoistureIndex.tif")
mascara<-raster("./1961_1970/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/1961_1970")
writeRaster(sortida, "climaticMoistureIndex.tif", overwrite=T)
obreraster<-raster("./climaticMoistureIndex.tif")

KK<-stack(obreraster, mascara)

plot(KK)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_1961_1970/continentality.tif")
mascara<-raster("./1961_1970/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/1961_1970")
writeRaster(sortida, "continentality.tif", overwrite=T)
obreraster<-raster("./continentality.tif")

KK<-stack(obreraster, mascara)

plot(KK)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_1961_1970/embergerQ.tif")
mascara<-raster("./1961_1970/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/1961_1970")
writeRaster(sortida, "embergerQ.tif", overwrite=T)
obreraster<-raster("./embergerQ.tif")

KK<-stack(obreraster, mascara)

plot(KK)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_1961_1970/growingDegDays0.tif")
mascara<-raster("./1961_1970/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/1961_1970")
writeRaster(sortida, "growingDegDays0.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_1961_1970/growingDegDays5.tif")
mascara<-raster("./1961_1970/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/1961_1970")
writeRaster(sortida, "growingDegDays5.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_1961_1970/maxTempColdest.tif")
mascara<-raster("./1961_1970/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/1961_1970")
writeRaster(sortida, "maxTempColdest.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_1961_1970/minTempWarmest.tif")
mascara<-raster("./1961_1970/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/1961_1970")
writeRaster(sortida, "minTempWarmest.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_1961_1970/monthCountByTemp10.tif")
mascara<-raster("./1961_1970/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/1961_1970")
writeRaster(sortida, "monthCountByTemp10.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_1961_1970/PETColdestQuarter.tif")
mascara<-raster("./1961_1970/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/1961_1970")
writeRaster(sortida, "PETColdestQuarter.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_1961_1970/PETDriestQuarter.tif")
mascara<-raster("./1961_1970/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/1961_1970")
writeRaster(sortida, "PETDriestQuarter.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_1961_1970/PETseasonality.tif")
mascara<-raster("./1961_1970/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/1961_1970")
writeRaster(sortida, "PETseasonality.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_1961_1970/PETWarmestQuarter.tif")
mascara<-raster("./1961_1970/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/1961_1970")
writeRaster(sortida, "PETWarmestQuarter.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_1961_1970/PETWettestQuarter.tif")
mascara<-raster("./1961_1970/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/1961_1970")
writeRaster(sortida, "PETWettestQuarter.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_1961_1970/thermicityIndex.tif")
mascara<-raster("./1961_1970/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/1961_1970")
writeRaster(sortida, "thermicityIndex.tif", overwrite=T)

##################################################################