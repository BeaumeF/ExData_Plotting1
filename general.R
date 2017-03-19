## Download file
fileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
filename <- "exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileURL, filename)
unzip(filename)

## Reading tables in variable ds
ds <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

## Keeping just the data from 2007-02-01, 2007-02-02
dsFast <- ds[ds$Date %in% c("1/2/2007","2/2/2007"),]