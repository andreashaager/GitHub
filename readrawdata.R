## first read raw data file and make and set correct data types

tab <- read.table("/Users/andreashaager/coursera/household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?", colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))