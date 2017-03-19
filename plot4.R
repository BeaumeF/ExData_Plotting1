## Plot4
## Need to use code in general.R to have the good dataset in dsFast

## separate date
datetime <- strptime(paste(dsFast$Date, dsFast$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

## Put values in variables
globalActivePower <- as.numeric(dsFast$Global_active_power)
globalReactivePower <- as.numeric(dsFast$Global_reactive_power)

## To the screen
## Sub1
par(mfrow = c(2, 2))

plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power", cex=0.2)

plot(datetime, dsFast$Voltage, type="l", xlab="datetime", ylab="Voltage")

plot(datetime, dsFast$Sub_metering_1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, dsFast$Sub_metering_2, type="l", col="red")
lines(datetime, dsFast$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, col=c("black", "red", "blue"), bty="o")

plot(datetime, globalReactivePower, type="l", xlab="datetime", ylab="Global_reactive_power")

## in PNG
dev.copy(png, "plot4.png", width=480, height=480)
dev.off()