sampledata <- "./exdata%2Fdata%2Fhousehold_power_consumption/household_power_consumption.txt"

mydata <- read.table(sampledata,header = TRUE,sep=";",dec=".",stringsAsFactors = FALSE)

subdata <- mydata[mydata$Date %in% c("1/2/2007","2/2/2007"),]

datetime <- strptime(paste(subdata$Date, subdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

globalActivePower <- as.numeric(subdata$Global_active_power)

png("plot2.png", width=480, height=480)

plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.off()