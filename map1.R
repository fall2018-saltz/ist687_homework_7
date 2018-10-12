
library("ggplot2")
library("ggmap")
us <- map_data("state")
map1 <- ggplot(clean_data_merged, aes(map_id = clean_data_merged$stateName))
map1 <- map1 + geom_map(map = us ,fill="white", color=clean_data_merged$statearea)
map1
