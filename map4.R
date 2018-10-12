
library("ggplot2")
library("ggmap")
us <- map_data("state")
options(scipen=999)
latlon <- geocode("new york city, ny",source="dsk")
x1 <- latlon$lat-10
y1 <- latlon$lon-10
y2 <- latlon$lon+10
x2 <- latlon$lat+10
map4 <- ggplot(clean_data_merged, aes(map_id = stateName))
map4 <- map4 + geom_map(map = us,aes(fill=Murder))+ scale_fill_gradient(low = "white", high = "red")        
map4 <- map4 + expand_limits(x = us$long, y = us$lat) + coord_map()
map4 <- map4 + geom_point(data = clean_data_merged, mapping = aes(x = statecenterx, y = statecentery, size=population))
x1
x2
y1
y2
