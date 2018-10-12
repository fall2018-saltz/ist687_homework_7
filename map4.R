
library("ggplot2")
library("ggmap")
us <- map_data("state")
options(scipen=999)
map3 <- ggplot(clean_data_merged, aes(map_id = stateName,xlim=))
map3 <- map3 + geom_map(map = us,aes(fill=Murder))+ scale_fill_gradient(low = "white", high = "red")             
map3 <- map3 + expand_limits(x = us$long, y = us$lat) + coord_map()
map3 <- map3 + geom_point(data = clean_data_merged, mapping = aes(x = statecenterx, y = statecentery, size=population))


