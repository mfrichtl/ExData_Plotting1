power <- read.table("./household_power_consumption.txt", header = TRUE,
                    colClass = c("character", "character", rep("numeric", 7)),
                    sep = ";", na.strings = "?")

par(mar = c(4, 4, 2, 2))

png(file = "plot1.png")
with(subset(power, Date == "1/2/2007" | Date == "2/2/2007"),
     hist(Global_active_power, col = "red", main = "Global Active Power",
          xlab = "Global Active Power (kilowatts)", ylim = c(0, 1200)
          )
     )
dev.off()