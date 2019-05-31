hpc <- read.table("household_power_consumption.txt",header = TRUE, sep = ";", stringsAsFactors = FALSE)
hpc <- subset(hpc, hpc$Date=="1/2/2007" | hpc$Date=="2/2/2007")

DTime <- strptime(paste(hpc$Date, hpc$Time, sep = " "),format="%d/%m/%Y %H:%M:%S")
png("plot2.png", width = 480, height = 480)

plot(DTime,hpc$Global_active_power,type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

dev.off()