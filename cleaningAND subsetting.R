##  cleaning and subsetting the data
## Format date to Type Date
tab$Date <- as.Date(tab$Date, "%d/%m/%Y")

## Filter data set from 1.2.2007 to 2.2.2007
tab <- subset(tab,Date >= as.Date("2007-2-1") & Date <= as.Date("2007-2-2"))

## Remove incomplete records
tab <- tab[complete.cases(tab),]

## Combine Date and Time for easier plotting
dateTime <- paste(tab$Date, tab$Time)

## vector datetime
dateTime <- setNames(dateTime, "DateTime")

## Remove old Date and Time column
tab <- tab[ ,!(names(tab) %in% c("Date","Time"))]

## Add new DateTime column
tab <- cbind(dateTime, tab)

## Format dateTime column
tab$dateTime <- as.POSIXct(dateTime)
