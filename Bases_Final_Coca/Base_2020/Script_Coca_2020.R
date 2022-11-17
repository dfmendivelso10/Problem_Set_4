

setwd("/Users/df.mendivelso10/Downloads/Densidad de Cultivos de Coca 2020 - Subdirección Estratégica y de Análisis - Ministerio de Justicia y del Derecho")

install.packages("rgdal")
install.packages("sp")
install.packages("sf")
install.packages("terra")
library(sf)
library(sp)
library(rgdal)
library(terra)
library(leaflet)
require(rgdal)
require(sf)
##-------------------------

list.files("/Users/df.mendivelso10/Downloads/Base_2020")
base_coca_2020 <- readOGR( 
  dsn= ".", layer = "geo_export_790bc368-34f8-4472-86cd-1e7fd5791105")

prueba <- colorNumeric(palette = "YlGnBu", domain = base_coca_2020$)

base_coca_2020

shape <- read_sf(dsn=".", layer = "geo_export_790bc368-34f8-4472-86cd-1e7fd5791105")

leaflet() %>% addTiles() %>% addPolygons(data=shape)



