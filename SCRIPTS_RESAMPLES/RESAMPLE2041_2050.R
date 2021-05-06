
##################################################################
#######################                 ##########################
####################### SCRIPT RESAMPLE ##########################
#######################                 ##########################
##################################################################

library(raster)


setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2041_2050/annualPET.tif")
mascara<-raster("./2041_2050/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2041_2050")
writeRaster(sortida, "annualPETrepr.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2041_2050/aridityIndexThornthwaite.tif")
mascara<-raster("./2041_2050/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2041_2050")
writeRaster(sortida, "aridityIndexThornthwaite.tif", overwrite=T)

#################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2041_2050/climaticMoistureIndex.tif")
mascara<-raster("./2041_2050/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2041_2050")
writeRaster(sortida, "climaticMoistureIndex.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2041_2050/continentality.tif")
mascara<-raster("./2041_2050/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2041_2050")
writeRaster(sortida, "continentality.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2041_2050/embergerQ.tif")
mascara<-raster("./2041_2050/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2041_2050")
writeRaster(sortida, "embergerQ.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2041_2050/growingDegDays0.tif")
mascara<-raster("./2041_2050/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2041_2050")
writeRaster(sortida, "growingDegDays0.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2041_2050/growingDegDays5.tif")
mascara<-raster("./2041_2050/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2041_2050")
writeRaster(sortida, "growingDegDays5.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2041_2050/maxTempColdest.tif")
mascara<-raster("./2041_2050/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2041_2050")
writeRaster(sortida, "maxTempColdest.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2041_2050/minTempWarmest.tif")
mascara<-raster("./2041_2050/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2041_2050")
writeRaster(sortida, "minTempWarmest.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2041_2050/monthCountByTemp10.tif")
mascara<-raster("./2041_2050/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2041_2050")
writeRaster(sortida, "monthCountByTemp10.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2041_2050/PETColdestQuarter.tif")
mascara<-raster("./2041_2050/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2041_2050")
writeRaster(sortida, "PETColdestQuarter.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2041_2050/PETDriestQuarter.tif")
mascara<-raster("./2041_2050/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2041_2050")
writeRaster(sortida, "PETDriestQuarter.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2041_2050/PETseasonality.tif")
mascara<-raster("./2041_2050/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2041_2050")
writeRaster(sortida, "PETseasonality.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2041_2050/PETWarmestQuarter.tif")
mascara<-raster("./2041_2050/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2041_2050")
writeRaster(sortida, "PETWarmestQuarter.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2041_2050/PETWettestQuarter.tif")
mascara<-raster("./2041_2050/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2041_2050")
writeRaster(sortida, "PETWettestQuarter.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2041_2050/thermicityIndex.tif")
mascara<-raster("./2041_2050/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2041_2050")
writeRaster(sortida, "thermicityIndex.tif", overwrite=T)

##################################################################