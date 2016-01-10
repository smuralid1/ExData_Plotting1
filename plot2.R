Data<-read.csv2("household_power_consumption.csv")

subset_data<-subset(Data,Date=='1/2/2007'|Date=='2/2/2007')

png(file = "plot2.png")

plot(as.POSIXct(paste(as.Date((subset_data$Date),format="%d/%m/%Y"), as.character(subset_data$Time), format="%d/%m/%Y %HH:%MM:%SS")),as.numeric(as.character(subset_data$Global_active_power)),type="n",ylab = "Global Active Power (kilowatts)",xlab = "")


lines(as.POSIXct(paste(as.Date((subset_data$Date),format="%d/%m/%Y"), as.character(subset_data$Time), format="%d/%m/%Y %HH:%MM:%SS")),as.numeric(as.character(subset_data$Global_active_power)))
