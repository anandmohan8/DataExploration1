linegr <- function(){
    fl <- read.csv("dn.csv", header=TRUE)
    dates <- as.character(fl$Date)
    dates <- as.Date(dates, format="%d/%m/%Y")
    times <- as.character(fl$Time)
    dt <- paste0(dates, times)
    dt <- as.POSIXlt(dt)
    #print(dt[20])

    y <- fl$Global_active_power
    x <- dt    
    
    plot(x,y,type="o", pch="", xlab="", ylab="Global Active Power (kilowatts)")
    dev.copy(png, file="plot2.png", width=480, height=480, units="px")
    dev.off()
}