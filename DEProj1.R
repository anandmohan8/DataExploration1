getdata <- function(){
    #read all the rows from the txtfile into a data frame    
    allRows <- read.table("household_power_consumption.txt", header=TRUE, sep=";")
    print(nrow(allRows))

    #logical indexing
    ind1 <- allRows$Date=='1/2/2007'
    ind2 <- allRows$Date=='2/2/2007'
 
    dataNeeded <- data.frame()
    dataNeeded <- allRows[ind1,]
    dataNeeded <- rbind(dataNeeded, allRows[ind2,])
 
     
    write.csv(dataNeeded, file="dn.csv")   
}