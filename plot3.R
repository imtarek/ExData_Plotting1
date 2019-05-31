hpc <- read.table("household_power_consumption.txt",header = TRUE, sep = ";", stringsAsFactors = FALSE)
hpc <- subset(hpc, hpc$Date=="1/2/2007" | hpc$Date=="2/2/2007")

hpc$Sub_metering_1 <-as.numeric(hpc$Sub_metering_1)
hpc$Sub_metering_2 <- as.numeric(hpc$Sub_metering_2)
hpc$Sub_metering_3 <- as.numeric(hpc$Sub_metering_3)
DTime <- strptime(paste(hpc$Date, hpc$Time, sep = " "),format="%d/%m/%Y %H:%M:%S")

png("plot3.png", width = 480, height = 480)

plot(DTime,hpc$Sub_metering_1,type="l", xlab = "", ylab = "Energy sub metering")
lines(DTime,hpc$Sub_metering_2,col="red")
lines(DTime,hpc$Sub_metering_3,col="blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty = 1,col = c("black","red","blue"))



dev.off()