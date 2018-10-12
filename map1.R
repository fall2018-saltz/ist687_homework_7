
library("ggplot")
map.simple <- ggplot(dummyDF, aes(map_id = state))
> map.simple <- map.simple + geom_map(map = us,
+ fill="white", color="black")
