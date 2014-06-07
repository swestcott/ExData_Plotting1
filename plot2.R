if(!exists("subdata")) source("load.R")

png("plot2.png", width=480, height=480)
plot(x=subdata$DateTime, y=subdata$Global_active_power, xlab="", ylab="Gloal Active Power (kilowatts)", type="l")
dev.off();

