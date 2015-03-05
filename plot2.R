power <- read.table("./household_power_consumption.txt", header = TRUE,
                    colClass = c("character", "character", rep("numeric", 7)),
                    sep = ";", na.strings = "?")

par(mar = c(4, 4, 2, 2))

png(file = "plot2.png")
with(subset(power, Date == "1/2/2007" | Date == "2/2/2007"),
     plot(as.POSIXct(paste(Date, Time), format = "%d/%m/%Y %H:%M:%S"),
          Global_active_power, type = "l", xlab = "",
          ylab = "Global Active Power (kilowatts)"
     )
)
dev.off()