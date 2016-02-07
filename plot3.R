source("common.R")

# the third plot: three time series of energy sub metering values on one plot
plot3 <- function(data) {
	# create the first time serie
	with(data, plot(Time, Sub_metering_1, type = "l", 
					ylab = "Energy sub metering", xlab = ""))
	# another two time series in different colours
	with(data, points(Time, Sub_metering_2, type = "l", col = "red"))
	with(data, points(Time, Sub_metering_3, type = "l", col = "blue"))
	# add legend to the plot
	legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
			lty = c(1, 1, 1), col = c("black", "red", "blue"))
}

data <- prepare_data()
plot3(data)
copy_2_png("plot3.png")