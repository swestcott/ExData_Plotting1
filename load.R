data = read.csv("./data/household_power_consumption.txt", sep=";", na.strings="?")

data$DateTime <- paste(data$Date, data$Time)
data$DateTime <- as.POSIXlt(data$DateTime,format="%d/%m/%Y %H:%M:%S")
data$Date = NULL
data$Time = NULL

minDate <- as.POSIXct("2007-02-01 00:00:00", format="%Y-%m-%d %H:%M:%S")
maxDate <- as.POSIXct("2007-02-02 23:59:59", format="%Y-%m-%d %H:%M:%S")

subdata <- subset(data, DateTime >= minDate & DateTime <= maxDate)