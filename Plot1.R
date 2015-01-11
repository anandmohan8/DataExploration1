histgr <- function(){
    fl <- read.csv("dn.csv", header=TRUE)
    #hist(fl$Global_active_power, col="red", xlab="Global Active Power (kilowatts)")
    with(fl,hist(fl$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power"))
    
    dev.copy(png, file="plot1.png", width=480, height=480, units="px")
    dev.off()
}