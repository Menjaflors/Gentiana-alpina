
##################################################################
#######################                 ##########################
####################### SCRIPT RESAMPLE ##########################
#######################                 ##########################
##################################################################

library(raster)


setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2061_2070/annualPET.tif")
mascara<-raster("./2061_2070/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2061_2070")
writeRaster(sortida, "annualPETrepr.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2061_2070/aridityIndexThornthwaite.tif")
mascara<-raster("./2061_2070/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2061_2070")
writeRaster(sortida, "aridityIndexThornthwaite.tif", overwrite=T)

#################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2061_2070/climaticMoistureIndex.tif")
mascara<-raster("./2061_2070/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2061_2070")
writeRaster(sortida, "climaticMoistureIndex.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2061_2070/continentality.tif")
mascara<-raster("./2061_2070/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2061_2070")
writeRaster(sortida, "continentality.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2061_2070/embergerQ.tif")
mascara<-raster("./2061_2070/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2061_2070")
writeRaster(sortida, "embergerQ.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2061_2070/growingDegDays0.tif")
mascara<-raster("./2061_2070/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2061_2070")
writeRaster(sortida, "growingDegDays0.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2061_2070/growingDegDays5.tif")
mascara<-raster("./2061_2070/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2061_2070")
writeRaster(sortida, "growingDegDays5.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2061_2070/maxTempColdest.tif")
mascara<-raster("./2061_2070/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2061_2070")
writeRaster(sortida, "maxTempColdest.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2061_2070/minTempWarmest.tif")
mascara<-raster("./2061_2070/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2061_2070")
writeRaster(sortida, "minTempWarmest.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2061_2070/monthCountByTemp10.tif")
mascara<-raster("./2061_2070/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2061_2070")
writeRaster(sortida, "monthCountByTemp10.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2061_2070/PETColdestQuarter.tif")
mascara<-raster("./2061_2070/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2061_2070")
writeRaster(sortida, "PETColdestQuarter.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2061_2070/PETDriestQuarter.tif")
mascara<-raster("./2061_2070/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2061_2070")
writeRaster(sortida, "PETDriestQuarter.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2061_2070/PETseasonality.tif")
mascara<-raster("./2061_2070/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2061_2070")
writeRaster(sortida, "PETseasonality.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2061_2070/PETWarmestQuarter.tif")
mascara<-raster("./2061_2070/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2061_2070")
writeRaster(sortida, "PETWarmestQuarter.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2061_2070/PETWettestQuarter.tif")
mascara<-raster("./2061_2070/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2061_2070")
writeRaster(sortida, "PETWettestQuarter.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2061_2070/thermicityIndex.tif")
mascara<-raster("./2061_2070/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2061_2070")
writeRaster(sortida, "thermicityIndex.tif", overwrite=T)

##################################################################