
# Create a color coded map, based on the area of the state 

# this uses the libraries the following libraries
library("ggplot2")
library("ggmap")
library("maps")
library("mapdata")

#map_data turns a s a function that turns a series of points along an outline into a data frame of those points.
us <- map_data("state")
options(scipen=999)
map1 <- ggplot(clean_data_merged, aes(map_id = stateName))
map1 <- map1 + geom_map(map = us ,aes(fill= state.area))
map1 <- map1 + expand_limits(x = us$long, y = us$lat) + coord_map()
map1
