data1<-read.csv("household_power_consumption.txt",sep=";",stringsAsFactors = FALSE)
datatouse<-subset(data1,Date=='1/2/2007'|Date=='2/2/2007')
datatouse$Global_active_power<-as.numeric(datatouse$Global_active_power)
png('plot1')
hist(datatouse$Global_active_power, breaks = 12, xlab= "Global Active Power (kilowatts)", ylab="Frequency", main = "Global Active Power", freq=TRUE, col = "red", cex.lab=0.8, cex.axis=0.8)
dev.off()
