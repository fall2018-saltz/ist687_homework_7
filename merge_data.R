
library("ggplot2")
cleandata2 <- USArrests


# save row names as a separate variable
x <- as.vector(rownames(USArrests))

# add this column to the dataframe as a column names stateName
cleandata2$stateName <- x

# merge the dataframes based on the stateName column in both the dataframes
# the merge function combines dataframes based on common columns
# here it merges the dataframes by the common column stateName
clean_data_merged <- merge(clean_data,cleandata2,by="stateName")
head(clean_data_merged)
