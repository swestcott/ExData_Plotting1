if(!exists("subdata")) source("load.R")

png("plot1.png", width=480, height=480)
hist(subdata$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="red", ylim=c(0,1200))
dev.off();
