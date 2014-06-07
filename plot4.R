if(!exists("subdata")) source("load.R")

png("plot4.png", width=480, height=480)
par(mfrow=c(2,2))

plot(x=subdata$DateTime, y=subdata$Global_active_power, xlab="", ylab="Gloal Active Power", type="l", cex.lab=0.7, cex.axis=0.7)

plot(x=subdata$DateTime, y=subdata$Voltage, xlab="datetime", ylab="Voltage", type="l", cex.lab=0.7, cex.axis=0.7)

plot(x=subdata$DateTime, y=subdata$Sub_metering_1, xlab="", ylab="Energy sub metering", type="l", cex.lab=0.7, cex.axis=0.7)
lines(x=subdata$DateTime, y=subdata$Sub_metering_2, col="red")
lines(x=subdata$DateTime, y=subdata$Sub_metering_3, col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), bty="n", lwd=2, cex=0.7)

plot(x=subdata$DateTime, y=subdata$Global_reactive_power, xlab="datetime", ylab="Gloal_reactive_power", type="l", cex.lab=0.7, cex.axis=0.7)

dev.off();
