
library("ggplot2")
library("ggmap")
cleandata2 <- USArrests


# save row names as a separate variable
stateName <- as.vector(rownames(USArrests))
stateName <- tolower(stateName)
# add this column to the dataframe as a column names stateName
cleandata2 <- cbind(cleandata2,stateName, stringsAsFactors=FALSE)

# merge the dataframes based on the stateName column in both the dataframes
# the merge function combines dataframes based on common columns
# here it merges the dataframes by the common column stateName

clean_data_merged <- merge(clean_data,cleandata2,by="stateName")

# Add the area of each state, and the center of each state, to the merged dataframe
# using the ‘state.center’, ‘state.center’ and ‘state.name’ vectors

#saving the x and y co-ods of the center in separate variables
statecenterx <- state.center$x
statecentery <- state.center$y

# use column bind to join the dataframe
clean_data_merged <- cbind(clean_data_merged,state.area)
clean_data_merged <- cbind(clean_data_merged,statecenterx)
clean_data_merged <- cbind(clean_data_merged,statecentery)

str(clean_data_merged)


