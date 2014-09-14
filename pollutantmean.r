# Hello! This is a function for calculating mean of the specdata dataset in Coursera. If there are more efficient ways of doing
# this, please let me know!

pollutantmean <- function(directory, pollutant, id = 1:332) {
    new.id <-  formatC(id, width=3, flag="0")                             # Formatting id to make it readable by the function
    
    
    directory.full <- paste(directory, "/", new.id, ".csv", sep="")       # Creating the full file name with 
                                                                          # parent directory inside string
    
    for(i in 1:length(directory.full)) {					                        # If id is a vector > 1, iterates across every object
                                                                          # in the vector
        pollutant_df <- rbind(read.csv(directory.full[i]), pollutant_df)	# and pulls all .csv files into one dataframe via rbind
    }
    mean(pollutant_df[, pollutant], na.rm=TRUE)				                  	# finds the mean according to argument specified
}
