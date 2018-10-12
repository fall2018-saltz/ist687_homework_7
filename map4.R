
# Repeat step C, but only show the states in the north east
# Hint: get the lat and lon of new york city
# Hint: set the xlim and ylim to NYC +/- 10

library("ggplot2")
library("ggmap")
us <- map_data("state")
options(scipen=999)

# get the latitude and longitude of NYC from the datasciencetoolkit 
latlon <- geocode("new york city, ny",source="dsk")
y1 <- latlon$lat-10
x1 <- latlon$lon-10
x2 <- latlon$lon+10
y2 <- latlon$lat+10
map4 <- ggplot(clean_data_merged, aes(map_id = stateName))
map4 <- map4 + geom_map(map = us,aes(fill=Murder))+ scale_fill_gradient(low = "white", high = "red") + xlim(c(x1,x2)) + ylim(c(y1,y2))        
map4 <- map4 + expand_limits(x = us$long, y = us$lat) + coord_map()
map4 <- map4 + geom_point(data = clean_data_merged, mapping = aes(x = statecenterx, y = statecentery, size=population))
map4
