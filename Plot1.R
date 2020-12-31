#Preparing data
household_power_consumption <- read.csv("~/Downloads/household_power_consumption.txt", sep=";")
data<- household_power_consumption
data$Date <- as.Date(data$Date,"%d/%m/%Y")
data <- subset(data, Date == "2007-02-01" | Date == "2007-02-02")
datetime <- strptime(paste(data$Date,as.character(data$Time)),"%Y-%m-%d %H:%M:%S")

#Code plot 1
hist(as.numeric(as.character(data$Global_active_power)), main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")
