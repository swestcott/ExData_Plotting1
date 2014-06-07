if(!exists("subdata")) source("load.R")

png("plot3.png", width=480, height=480)
plot(x=subdata$DateTime, y=subdata$Sub_metering_1, xlab="", ylab="Energy sub metering", type="l")
lines(x=subdata$DateTime, y=subdata$Sub_metering_2, col="red")
lines(x=subdata$DateTime, y=subdata$Sub_metering_3, col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lwd=2, cex=0.7)

dev.off();

