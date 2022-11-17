##---------------------------Proyecto Final --------------------------------

install.packages("rgdal")
install.packages("sp")
install.packages("sf")
install.packages("terra")
library(sf)
library(sp)
library(rgdal)
library(terra)
library(leaflet)
require(sf)
##-------------------------
setwd("/Users/df.mendivelso10/Desktop/Bases_Final_Coca/Base_2020")
list.files("/Users/df.mendivelso10/Downloads/Base_2020")
shape_2020 <- read_sf(dsn = ".", layer="geo_export_790bc368-34f8-4472-86cd-1e7fd5791105")
leaflet() %>% addTiles() %>% addPolygons(data=shape_2020$geometry, color = "red") 

setwd("/Users/df.mendivelso10/Desktop/Bases_Final_Coca/Base_2014")
list.files("/Users/df.mendivelso10/Desktop/Bases_Final_Coca/Base_2014")
shape_2014 <- read_sf(dsn = ".", layer="geo_export_6b789664-800f-4a06-be2f-b8a36f1a8297")
leaflet() %>% addTiles() %>% addPolygons(data=shape_2014$geometry, color = "blue") 

setwd("/Users/df.mendivelso10/Desktop/Bases_Final_Coca/Base_2013")
list.files("/Users/df.mendivelso10/Desktop/Bases_Final_Coca/Base_2013")
shape_2013 <- read_sf(dsn = ".", layer="geo_export_f2b10651-56a4-4d7d-91fa-58e5b3833581")
leaflet() %>% addTiles() %>% addPolygons(data=shape_2013$geometry, color = "yellow") 


