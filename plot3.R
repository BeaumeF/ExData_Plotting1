## Plot3
## Need to use code in general.R to have the good dataset in dsFast

## separate date
datetime <- strptime(paste(dsFast$Date, dsFast$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

## To the screen
## Sub1
plot(
     datetime,
     dsFast$Sub_metering_1,
     xlab = "",
     ylab = "Energy sub metering",
     type="l"
)

## Sub2
lines(
     datetime,
     dsFast$Sub_metering_2,
     col = "red",
     type="l"
)

## Sub3
lines(
     datetime,
     dsFast$Sub_metering_3,
     col = "blue",
     type="l"
)

## Legend
legend("topright", 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty=1,
       col=c("black", "red", "blue")
       )

## in PNG
dev.copy(png, "plot3.png", width=480, height=480)
dev.off()