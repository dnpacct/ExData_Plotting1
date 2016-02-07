source("common.R")

# the second plot: it shows how global active power changes over time
plot2 <- function(data) {
	#use plot with type - line
	with(data, plot(Time, Global_active_power, type = "l", 
					ylab = "Global Active Power (kilowatts)", 
					xlab = ""))
}

data <- prepare_data()
plot2(data)
copy_2_png("plot2.png")