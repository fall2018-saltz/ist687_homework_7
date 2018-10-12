
# Repeat step B, but color code the map based on the murder rate of each state.
# Show the population as a circle per state

# this uses the libraries the following libraries
library("ggplot2")
library("ggmap")

# map_data is a function that turns a 
# series of points along an outline into a data frame of those points.
# the "state" attribute is a dataframe with details about US
us <- map_data("state")

#changes scientific notations in plots to numeric
options(scipen=999)

# use ggplot to create an empty
map2 <- ggplot(clean_data_merged, aes(map_id = stateName))

# geom_map is used to create the map similar to geom_point
map2 <- map2 + geom_map(map = us,aes(fill=Murder))+ scale_fill_gradient(low = "black", high = "red")             

# expand_limits() is used to increase the range of the axes to include specific 
# values eg. making sure the map includes the range of the whole US
# coord_map() ensures that the map is proportional
map2 <- map2 + expand_limits(x = us$long, y = us$lat) + coord_map()
map2 <- map2 + ggtitle("murder rate per state")
