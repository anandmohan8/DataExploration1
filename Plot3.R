linegr3 <- function(){
    fl <- read.csv("dn.csv", header=TRUE)
    dates <- as.character(fl$Date)
    dates <- as.Date(dates, format="%d/%m/%Y")
    times <- as.character(fl$Time)
    dt <- paste0(dates, times)
    dt <- as.POSIXlt(dt)
    #print(dt[20])
    
    y <- fl$Sub_metering_1
    y1 <- fl$Sub_metering_2
    y2 <- fl$Sub_metering_3
    x <- dt    
    
    plot(x,y,type="o", pch="", xlab="", ylab="Energy Sub Metering")
    points(x,y1,type="o", pch="", xlab="", col="red")
    points(x,y2,type="o", pch="", xlab="", col="blue")
    legend("topright", col=c("black","red","blue"), pch="---", legend=c("Sub_Metering_1", "Sub_Metering_2", "Sub_Metering_3"))
    
    dev.copy(png, file="plot3.png", width=480, height=480, units="px")
    dev.off()
}