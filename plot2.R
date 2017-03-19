## Plot2
## Need to use code in general.R to have the good dataset in dsFast

## separate date
datetime <- strptime(paste(dsFast$Date, dsFast$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

## To the screen
plot(
     datetime,
     as.numeric(dsFast$Global_active_power),
     xlab = "",
     ylab = "Global Active Power (Kilowatts)",
     type="l"
)

## in PNG
dev.copy(png, "plot2.png", width=480, height=480)
dev.off()
