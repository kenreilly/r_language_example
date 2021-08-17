require('rjson')
library(maps)

# load dataset
dataset <- fromJSON(file = './data/dataset.json')

# create map
map("world", c('US', 'Canada'), fill=TRUE, col="white", bg="darkblue", xlim=c(-175, -40), ylim=c(0, 80), mar=c(0,0,0,0))

# plot station coordinates
for (i in dataset) {
	address <- i$AddressInfo
	points(address$Longitude,address$Latitude, col="red", pch=16)
}