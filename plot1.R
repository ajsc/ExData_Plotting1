
## Get data
data_file <- "./data/household_power_consumption.txt"
data <- read.table(data_file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".",na.strings="?",
                   nrows=2075259)
data_subset <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

## Plot variables
global_active_power <- as.numeric(data_subset$Global_active_power)

## Plot
png("plot1.png", width=480, height=480)
hist(global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()

