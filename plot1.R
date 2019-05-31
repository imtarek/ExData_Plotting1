hpc <- read.table("household_power_consumption.txt",header = TRUE, sep = ";", stringsAsFactors = FALSE)
hpc <- subset(hpc, hpc$Date=="1/2/2007" | hpc$Date=="2/2/2007")
hpc$Global_active_power<- as.numeric(hpc$Global_active_power)

png("plot1.png", width = 480, height = 480)

hist(hpc$Global_active_power,col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

dev.off()
