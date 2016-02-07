# load data from file
prepare_data <- function(fileName = "household_power_consumption.txt") {
	# load data into R
	data <- read.table("household_power_consumption.txt", header = TRUE, 
						col.names = c("Date", "Time", "Global_active_power", 
									"Global_reactive_power", "Voltage", "Global_intensity", 
									"Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
						sep=";", na.strings="?")
	# select only two dates
	data <- subset(data, Date == '1/2/2007' | Date == '2/2/2007')
	# make Time column for plots
	data$Time <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
	# make Date column from strings
	data$Date <- as.Date(data$Date, "%d/%m/%Y")
	# return date for further functions
	data
}

# function saves a plot as a PNG image
copy_2_png <- function(fileName) {
	dev.copy(png, file = fileName, width = 480, height = 480)
	dev.off()
}