power <- read.table("./household_power_consumption.txt", header = TRUE,
                    colClass = c("character", "character", rep("numeric", 7)),
                    sep = ";", na.strings = "?")

png(file = "plot4.png")
par(mar = c(4, 4, 2, 2), mfrow = c(2,2))

with(subset(power, Date == "1/2/2007" | Date == "2/2/2007"),
     plot(as.POSIXct(paste(Date, Time), format = "%d/%m/%Y %H:%M:%S"),
          Global_active_power, type = "l", xlab = "",
          ylab = "Global Active Power")
)

with(subset(power, Date == "1/2/2007" | Date == "2/2/2007"),
     plot(as.POSIXct(paste(Date, Time), format = "%d/%m/%Y %H:%M:%S"),
          Voltage, type = "l", xlab = "datetime", col = "black",
          ylab = "Voltage")
)

with(subset(power, Date == "1/2/2007" | Date == "2/2/2007"),
     plot(as.POSIXct(paste(Date, Time), format = "%d/%m/%Y %H:%M:%S"),
          Sub_metering_1, type = "l", xlab = "", col = "black",
          ylab = "Energy sub metering")
)

with(subset(power, Date == "1/2/2007" | Date == "2/2/2007"),
     lines(as.POSIXct(paste(Date, Time), format = "%d/%m/%Y %H:%M:%S"),
      Sub_metering_2, col = "red")
)
with(subset(power, Date == "1/2/2007" | Date == "2/2/2007"),
     lines(as.POSIXct(paste(Date, Time), format = "%d/%m/%Y %H:%M:%S"),
      Sub_metering_3, col = "blue")
)

legend("topright", col = c("black", "red", "blue"),
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty = c(1, 1, 1), bty = "n"
)

with(subset(power, Date == "1/2/2007" | Date == "2/2/2007"),
     plot(as.POSIXct(paste(Date, Time), format = "%d/%m/%Y %H:%M:%S"),
          Global_reactive_power, type = "l", xlab = "datetime", col = "black")
)
dev.off()