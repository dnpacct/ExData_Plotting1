source("common.R")

# create the first plot
plot1 <- function(data) {
	# histogram of Global Active Power values
	with(data, hist(Global_active_power, col = "red", 
					main = "Global Active Power", 
					xlab = "Global Active Power (kilowatts)",
					ylab = "Frequency"))
}

data <- prepare_data()
plot1(data)
copy_2_png("plot1.png")