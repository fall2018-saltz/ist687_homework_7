
library("ggplot2")
library("ggmap")
map1 <- ggplot(clean_data_merged, aes(map_id = state))
map1 <- map1 + geom_map(map = US,fill="white", color=statearea)
map1
