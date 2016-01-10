Data<-read.csv2("household_power_consumption.csv")

subset_data<-subset(Data,Date=='1/2/2007'|Date=='2/2/2007')

png(file = "plot1.png")

hist(as.numeric(as.character(subset_data$Global_active_power)),col = "red",main="Global Active Power",ylab="Frequency",xlab = "Global Active Power (kilowatts)")

