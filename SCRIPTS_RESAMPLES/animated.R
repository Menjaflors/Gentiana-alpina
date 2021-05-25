
#ANIMATED

library(raster)
library(animation)

###############Si vull temperatures#####################
######################RCP85#############################
entrada1<-("D:/Bioclimatiques_rcp85/1961_1970/bio1.tif")
entrada2<-("D:/Bioclimatiques_rcp85/1971_1980/bio1.tif")
entrada3<-("D:/Bioclimatiques_rcp85/1981_1990/bio1.tif")
entrada4<-("D:/Bioclimatiques_rcp85/1991_2000/bio1.tif")
entrada5<-("D:/Bioclimatiques_rcp85/2001_2010/bio1.tif")
entrada6<-("D:/Bioclimatiques_rcp85/2011_2020/bio1.tif")
entrada7<-("D:/Bioclimatiques_rcp85/2021_2030/bio1.tif")
entrada8<-("D:/Bioclimatiques_rcp85/2031_2040/bio1.tif")
entrada9<-("D:/Bioclimatiques_rcp85/2041_2050/bio1.tif")
entrada10<-("D:/Bioclimatiques_rcp85/2051_2060/bio1.tif")
entrada11<-("D:/Bioclimatiques_rcp85/2061_2070/bio1.tif")
entrada12<-("D:/Bioclimatiques_rcp85/2071_2080/bio1.tif")
entrada13<-("D:/Bioclimatiques_rcp85/2081_2090/bio1.tif")
entrada14<-("D:/Bioclimatiques_rcp85/2091_2100/bio1.tif")
#######################RCP45#############################
entrada101<-("D:/Bioclimatiques_rcp45/1961_1970/bio1.tif")
entrada102<-("D:/Bioclimatiques_rcp45/1971_1980/bio1.tif")
entrada103<-("D:/Bioclimatiques_rcp45/1981_1990/bio1.tif")
entrada104<-("D:/Bioclimatiques_rcp45/1991_2000/bio1.tif")
entrada105<-("D:/Bioclimatiques_rcp45/2001_2010/bio1.tif")
entrada106<-("D:/Bioclimatiques_rcp45/2011_2020/bio1.tif")
entrada107<-("D:/Bioclimatiques_rcp45/2021_2030/bio1.tif")
entrada108<-("D:/Bioclimatiques_rcp45/2031_2040/bio1.tif")
entrada109<-("D:/Bioclimatiques_rcp45/2041_2050/bio1.tif")
entrada110<-("D:/Bioclimatiques_rcp45/2051_2060/bio1.tif")
entrada111<-("D:/Bioclimatiques_rcp45/2061_2070/bio1.tif")
entrada112<-("D:/Bioclimatiques_rcp45/2071_2080/bio1.tif")
entrada113<-("D:/Bioclimatiques_rcp45/2081_2090/bio1.tif")
entrada114<-("D:/Bioclimatiques_rcp45/2091_2100/bio1.tif")

#######################Precipitacions#####################
######################RCP85###############################
entrada1<-("D:/Bioclimatiques_rcp85/1961_1970/bio12.tif")
entrada2<-("D:/Bioclimatiques_rcp85/1971_1980/bio12.tif")
entrada3<-("D:/Bioclimatiques_rcp85/1981_1990/bio12.tif")
entrada4<-("D:/Bioclimatiques_rcp85/1991_2000/bio12.tif")
entrada5<-("D:/Bioclimatiques_rcp85/2001_2010/bio12.tif")
entrada6<-("D:/Bioclimatiques_rcp85/2011_2020/bio12.tif")
entrada7<-("D:/Bioclimatiques_rcp85/2021_2030/bio12.tif")
entrada8<-("D:/Bioclimatiques_rcp85/2031_2040/bio12.tif")
entrada9<-("D:/Bioclimatiques_rcp85/2041_2050/bio12.tif")
entrada10<-("D:/Bioclimatiques_rcp85/2051_2060/bio12.tif")
entrada11<-("D:/Bioclimatiques_rcp85/2061_2070/bio12.tif")
entrada12<-("D:/Bioclimatiques_rcp85/2071_2080/bio12.tif")
entrada13<-("D:/Bioclimatiques_rcp85/2081_2090/bio12.tif")
entrada14<-("D:/Bioclimatiques_rcp85/2091_2100/bio12.tif")

#######################RCP45#############################
entrada101<-("D:/Bioclimatiques_rcp45/1961_1970/bio12.tif")
entrada102<-("D:/Bioclimatiques_rcp45/1971_1980/bio12.tif")
entrada103<-("D:/Bioclimatiques_rcp45/1981_1990/bio12.tif")
entrada104<-("D:/Bioclimatiques_rcp45/1991_2000/bio12.tif")
entrada105<-("D:/Bioclimatiques_rcp45/2001_2010/bio12.tif")
entrada106<-("D:/Bioclimatiques_rcp45/2011_2020/bio12.tif")
entrada107<-("D:/Bioclimatiques_rcp45/2021_2030/bio12.tif")
entrada108<-("D:/Bioclimatiques_rcp45/2031_2040/bio12.tif")
entrada109<-("D:/Bioclimatiques_rcp45/2041_2050/bio12.tif")
entrada110<-("D:/Bioclimatiques_rcp45/2051_2060/bio12.tif")
entrada111<-("D:/Bioclimatiques_rcp45/2061_2070/bio12.tif")
entrada112<-("D:/Bioclimatiques_rcp45/2071_2080/bio12.tif")
entrada113<-("D:/Bioclimatiques_rcp45/2081_2090/bio12.tif")
entrada114<-("D:/Bioclimatiques_rcp45/2091_2100/bio12.tif")


entrada30<-raster("D:/Bioclimatiques_rcp85/1961_1970/PETColdestQuarter_1961_1970.tif")
entrada31<-raster("D:/Bioclimatiques_rcp85/1971_1980/PETColdestQuarter_1971_1980.tif")
entrada32<-raster("D:/Bioclimatiques_rcp85/1981_1990/PETColdestQuarter_1981_1990.tif")
entrada33<-raster("D:/Bioclimatiques_rcp85/1991_2000/PETColdestQuarter_1991_2000.tif")
entrada34<-raster("D:/Bioclimatiques_rcp85/2001_2010/PETColdestQuarter.tif")
entrada35<-raster("D:/Bioclimatiques_rcp85/2011_2020/PETColdestQuarter.tif")
entrada36<-raster("D:/Bioclimatiques_rcp85/2021_2030/PETColdestQuarter.tif")
entrada37<-raster("D:/Bioclimatiques_rcp85/2031_2040/PETColdestQuarter.tif")
entrada38<-raster("D:/Bioclimatiques_rcp85/2041_2050/PETColdestQuarter.tif")
entrada39<-raster("D:/Bioclimatiques_rcp85/2051_2060/PETColdestQuarter.tif")
entrada40<-raster("D:/Bioclimatiques_rcp85/2061_2070/PETColdestQuarter.tif")
entrada41<-raster("D:/Bioclimatiques_rcp85/2071_2080/PETColdestQuarter.tif")
entrada42<-raster("D:/Bioclimatiques_rcp85/2081_2090/PETColdestQuarter.tif")
entrada43<-raster("D:/Bioclimatiques_rcp85/2091_2100/PETColdestQuarter.tif")



entrada50<-raster("D:/Bioclimatiques_rcp85/1961_1970/PETwettestQuarter_1961_1970.tif")
entrada51<-raster("D:/Bioclimatiques_rcp85/1971_1980/PETwettestQuarter_1971_1980.tif")
entrada52<-raster("D:/Bioclimatiques_rcp85/1981_1990/PETwettestQuarter_1981_1990.tif")
entrada53<-raster("D:/Bioclimatiques_rcp85/1991_2000/PETwettestQuarter_1991_2000.tif")
entrada50<-raster("D:/Bioclimatiques_rcp85/1961_1970/PETwettestQuarter.tif")
entrada51<-raster("D:/Bioclimatiques_rcp85/1971_1980/PETwettestQuarter.tif")
entrada52<-raster("D:/Bioclimatiques_rcp85/1981_1990/PETwettestQuarter.tif")
entrada53<-raster("D:/Bioclimatiques_rcp85/1991_2000/PETwettestQuarter.tif")
entrada54<-raster("D:/Bioclimatiques_rcp85/2001_2010/PETwettestQuarter.tif")
entrada55<-raster("D:/Bioclimatiques_rcp85/2011_2020/PETwettestQuarter.tif")
entrada56<-raster("D:/Bioclimatiques_rcp85/2021_2030/PETwettestQuarter.tif")
entrada57<-raster("D:/Bioclimatiques_rcp85/2031_2040/PETwettestQuarter.tif")
entrada58<-raster("D:/Bioclimatiques_rcp85/2041_2050/PETwettestQuarter.tif")
entrada59<-raster("D:/Bioclimatiques_rcp85/2051_2060/PETwettestQuarter.tif")
entrada60<-raster("D:/Bioclimatiques_rcp85/2061_2070/PETwettestQuarter.tif")
entrada61<-raster("D:/Bioclimatiques_rcp85/2071_2080/PETwettestQuarter.tif")
entrada62<-raster("D:/Bioclimatiques_rcp85/2081_2090/PETwettestQuarter.tif")
entrada63<-raster("D:/Bioclimatiques_rcp85/2091_2100/PETwettestQuarter.tif")

rcp45<-stack(entrada101, entrada102, entrada103, entrada104, entrada105, entrada106, entrada107, entrada108,
             entrada109, entrada110, entrada111, entrada112, entrada113, entrada114)
rcp85<-stack(entrada1, entrada2, entrada3, entrada4, entrada5, entrada6, entrada7, entrada8, entrada9, 
            entrada10, entrada11, entrada12, entrada13, entrada14)

mitjana<-stack(entrada30, entrada31, entrada32, entrada33, entrada34, entrada35, entrada36, entrada37, 
               entrada38, entrada39, entrada40, entrada41, entrada42, entrada43)

iuju<-stack(entrada50, entrada51, entrada52, entrada53, entrada54, entrada55, entrada56, entrada57, 
            entrada58, entrada59, entrada60, entrada61, entrada62, entrada63)

main<-c("1961_1970", "1971_1980", "1981_1990", "1991_2000", "2001_2010", "2011_2020", "2021_2030", "2031_2040",
        "2041_2050", "2051_2060","2061_2070", "2071_2080", "2081_2090", "2091_2100")

animate(x=rcp85, main=main, pause=0.4, maxpixels=100000, n=1, col=terrain.colors(600))

animate(x=rcp45, main=main, pause=0.4, maxpixels=100000, n=3, col=terrain.colors(600))

animate(x=mitjana, main=main, pause=1, maxpixels=10000, n=1, col=terrain.colors(600))

animate(x=iuju, main=main, pause=1, maxpixels=100000, n=1, col=terrain.colors(600))





saveVideo(expr, video.name = "animation.mp4", img.name = "Rplot", 
          ffmpeg = ani.options("ffmpeg"), other.opts = if (grepl("[.]mp4$", 
                                                                 video.name)) "-pix_fmt yuv420p")

