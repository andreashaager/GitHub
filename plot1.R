###  PLOT1
## Create the histogram
hist(tab$Global_active_power, main="Global Active Power", xlab = "Global Active Power (kilowatts)", col="red")
## Save file as png and close device
dev.copy(png,"plot1.png", width=480, height=480)
dev.off()
