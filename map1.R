
# Create a color coded map, based on the area of the state 

# this uses the libraries the following libraries
library("ggplot2")
library("ggmap")


# map_data is a function that turns a 
# series of points along an outline into a data frame of those points.
# the "state" attribute is a dataframe with details about US states
us <- map_data("state")

#changes scientific notations in plots to numeric
options(scipen=999)

# use ggplot to create an empty plot
map1 <- ggplot(clean_data_merged, aes(map_id = stateName))

map1 <- map1 + geom_map(map = us ,aes(fill= state.area))
# geom_map is used to create the map similar to geom_point etc
# expand_limits() is used to increase the range of the axes to include specific 
# values eg. making sure the map includes the range of the whole US map
# coord_map() ensures that the map is proportional
map1 <- map1 + expand_limits(x = us$long, y = us$lat) + coord_map()
map1 <- map1 + ggtitle("area of states")


