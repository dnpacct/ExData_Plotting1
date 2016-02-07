source("common.R")

# draw the first part of the plot
plot4_1 <- function(data) {
	with(data, plot(Time, Global_active_power, type = "l", 
					ylab = "Global Active Power", 
					xlab = ""))
}

# draw the second part of the plot
plot4_2 <- function(data) {
	with(data, plot(Time, Voltage, type = "l",
					ylab = "Voltage",
					xlab = "datetime"))
}

# draw the third part of the plot
plot4_3 <- function(data) {
	with(data, plot(Time, Sub_metering_1, type = "l", 
					ylab = "Energy sub metering", xlab = ""))
	with(data, points(Time, Sub_metering_2, type = "l", col = "red"))
	with(data, points(Time, Sub_metering_3, type = "l", col = "blue"))
	legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
			lty = c(1, 1, 1), col = c("black", "red", "blue"), bty = "n")
}

# draw the fourth part of the plot
plot4_4 <- function(data) {
	with(data, plot(Time, Global_reactive_power, type = "l",
					ylab = "Global_reactive_power", xlab = "datetime"))
}

# combines four parts in one plot using mfrow parameter to set layout
plot4 <- function(data) {
	par(mfrow = c(2, 2))
	par(mar = c(4.5, 4, 2, 1))
	plot4_1(data)
	plot4_2(data)
	plot4_3(data)
	plot4_4(data)
}

data <- prepare_data()
plot4(data)
copy_2_png("plot4.png")