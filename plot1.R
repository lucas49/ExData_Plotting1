sampledata <- "./exdata%2Fdata%2Fhousehold_power_consumption/household_power_consumption.txt"

mydata <- read.table(sampledata,header = TRUE,sep=";",dec=".",stringsAsFactors = FALSE)

subdata <- mydata[mydata$Date %in% c("1/2/2007","2/2/2007"),]


globalactivepower <- as.numeric(subdata$Global_active_power)

png("plot1.png", width=480, height=480)

hist(globalactivepower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

dev.off()