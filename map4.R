
library("ggplot2")
library("ggmap")
latlon <- geocode("syracuse, ny",source="dsk")
latlon$lon <- latlon$lon+10
latlon$lat <- latlon$lat+10
