# Do let me know if you can make this more efficient!
complete <- function(directory, id = 1:332) {
    pollutant_complete <- data.frame(id = id, nobs = id)							  # Initialised dataframe first
    new.id <-  formatC(id, width=3, flag="0")								          	# To make id readable by read.csv
    directory.full <- paste(directory, "/", new.id, ".csv", sep="")			# Read function
    for(i in 1:length(directory.full)) {								              	# For loop to iterate over list of id files
        placeholder <- read.csv(directory.full[i])			  					
        pollutant_complete[i, "nobs"] <- sum(complete.cases(placeholder))					# Insert sum of completed cases in eac id file to cell of column "nobs"
    }
    print(pollutant_complete)											# Output of pollutant_complete
}
