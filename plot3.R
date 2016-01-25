##Get data
data_file <- "./data/household_power_consumption.txt"
data <- read.table(data_file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
data_subset <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

## Plot Variables
time <- strptime(paste(data_subset$Date, data_subset$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
sub_Metering_1 <- as.numeric(data_subset$Sub_metering_1)
sub_Metering_2 <- as.numeric(data_subset$Sub_metering_2)
sub_Metering_3 <- as.numeric(data_subset$Sub_metering_3)

## Plot
png("plot3.png", width=480, height=480)
plot(time, sub_Metering_1, type="l", ylab="Energy Submetering", xlab="")
lines(time, sub_Metering_2, type="l", col="red")
lines(time, sub_Metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()