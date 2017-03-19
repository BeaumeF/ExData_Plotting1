## Create Histogram
## Need to use code in general.R to have the good dataset in dsFast

## To the screen
hist(
     as.numeric(dsFast$Global_active_power),
     col="RED",
     main = "Global Active Power",
     xlab = "Global Active Power (Kilowatts)"
     )

## in PNG
dev.copy(png, "plot1.png", width=480, height=480)
dev.off()
     