
# Show the population as a circle per state
# the larger the population, the larger the circle
# using the location defined by the center of each state

library("ggplot2")
library("ggmap")
us <- map_data("state")
options(scipen=999)
# similar to the earlier map 
map3 <- ggplot(clean_data_merged, aes(map_id = stateName))
map3 <- map3 + geom_map(map = us,aes(fill=Murder))+ scale_fill_gradient(low = "white", high = "red")             
map3 <- map3 + expand_limits(x = us$long, y = us$lat) + coord_map()

# use geom_point to plot the points at the center of the states and 
# adjust the size of the points according to the population
map3 <- map3 + geom_point(data = clean_data_merged, mapping = aes(x = statecenterx, y = statecentery, size=population))
map3

