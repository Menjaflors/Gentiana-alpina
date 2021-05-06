
##################################################################
#######################                 ##########################
####################### SCRIPT RESAMPLE ##########################
#######################                 ##########################
##################################################################

library(raster)


setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2031_2040/annualPET.tif")
mascara<-raster("./2031_2040/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2031_2040")
writeRaster(sortida, "annualPETrepr.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2031_2040/aridityIndexThornthwaite.tif")
mascara<-raster("./2031_2040/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2031_2040")
writeRaster(sortida, "aridityIndexThornthwaite.tif", overwrite=T)

#################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2031_2040/climaticMoistureIndex.tif")
mascara<-raster("./2031_2040/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2031_2040")
writeRaster(sortida, "climaticMoistureIndex.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2031_2040/continentality.tif")
mascara<-raster("./2031_2040/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2031_2040")
writeRaster(sortida, "continentality.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2031_2040/embergerQ.tif")
mascara<-raster("./2031_2040/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2031_2040")
writeRaster(sortida, "embergerQ.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2031_2040/growingDegDays0.tif")
mascara<-raster("./2031_2040/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2031_2040")
writeRaster(sortida, "growingDegDays0.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2031_2040/growingDegDays5.tif")
mascara<-raster("./2031_2040/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2031_2040")
writeRaster(sortida, "growingDegDays5.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2031_2040/maxTempColdest.tif")
mascara<-raster("./2031_2040/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2031_2040")
writeRaster(sortida, "maxTempColdest.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2031_2040/minTempWarmest.tif")
mascara<-raster("./2031_2040/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2031_2040")
writeRaster(sortida, "minTempWarmest.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2031_2040/monthCountByTemp10.tif")
mascara<-raster("./2031_2040/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2031_2040")
writeRaster(sortida, "monthCountByTemp10.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2031_2040/PETColdestQuarter.tif")
mascara<-raster("./2031_2040/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2031_2040")
writeRaster(sortida, "PETColdestQuarter.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2031_2040/PETDriestQuarter.tif")
mascara<-raster("./2031_2040/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2031_2040")
writeRaster(sortida, "PETDriestQuarter.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2031_2040/PETseasonality.tif")
mascara<-raster("./2031_2040/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2031_2040")
writeRaster(sortida, "PETseasonality.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2031_2040/PETWarmestQuarter.tif")
mascara<-raster("./2031_2040/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2031_2040")
writeRaster(sortida, "PETWarmestQuarter.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2031_2040/PETWettestQuarter.tif")
mascara<-raster("./2031_2040/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2031_2040")
writeRaster(sortida, "PETWettestQuarter.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2031_2040/thermicityIndex.tif")
mascara<-raster("./2031_2040/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2031_2040")
writeRaster(sortida, "thermicityIndex.tif", overwrite=T)

##################################################################