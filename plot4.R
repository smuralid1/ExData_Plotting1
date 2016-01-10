Data<-read.csv2("household_power_consumption.csv")

subset_data<-subset(Data,Date=='1/2/2007'|Date=='2/2/2007')



png(file = "plot4.png")

par(mfrow=c(2,2))

plot(as.POSIXct(paste(as.Date((subset_data$Date),format="%d/%m/%Y"), as.character(subset_data$Time), format="%d/%m/%Y %HH:%MM:%SS")),as.numeric(as.character(subset_data$Global_active_power)),type="n",ylab = "Global Active Power (kilowatts)",xlab = "")

lines(as.POSIXct(paste(as.Date((subset_data$Date),format="%d/%m/%Y"), as.character(subset_data$Time), format="%d/%m/%Y %HH:%MM:%SS")),as.numeric(as.character(subset_data$Global_active_power)))

plot(as.POSIXct(paste(as.Date((subset_data$Date),format="%d/%m/%Y"), as.character(subset_data$Time), format="%d/%m/%Y %HH:%MM:%SS")),as.numeric(as.character(subset_data$Voltage)),type="n",ylab = "Voltage",xlab = "datetime")

lines(as.POSIXct(paste(as.Date((subset_data$Date),format="%d/%m/%Y"), as.character(subset_data$Time), format="%d/%m/%Y %HH:%MM:%SS")),as.numeric(as.character(subset_data$Voltage)))

plot(as.POSIXct(paste(as.Date((subset_data$Date),format="%d/%m/%Y"), as.character(subset_data$Time), format="%d/%m/%Y %HH:%MM:%SS")),as.numeric(as.character(subset_data$Sub_metering_1)),type="n",xlab = "",ylab = "Energy sub metering")

lines(as.POSIXct(paste(as.Date((subset_data$Date),format="%d/%m/%Y"), as.character(subset_data$Time), format="%d/%m/%Y %HH:%MM:%SS")),as.numeric(as.character(subset_data$Sub_metering_1)))

lines(as.POSIXct(paste(as.Date((subset_data$Date),format="%d/%m/%Y"), as.character(subset_data$Time), format="%d/%m/%Y %HH:%MM:%SS")),as.numeric(as.character(subset_data$Sub_metering_2)),col="red")

lines(as.POSIXct(paste(as.Date((subset_data$Date),format="%d/%m/%Y"), as.character(subset_data$Time), format="%d/%m/%Y %HH:%MM:%SS")),as.numeric(as.character(subset_data$Sub_metering_3)),col="blue")

legend("topright",col = c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),cex=0.25,lwd=1)
plot(as.POSIXct(paste(as.Date((subset_data$Date),format="%d/%m/%Y"), as.character(subset_data$Time), format="%d/%m/%Y %HH:%MM:%SS")),as.numeric(as.character(subset_data$Global_reactive_power)),type="n",ylab = "Global_reactive_power",xlab = "datetime")

lines(as.POSIXct(paste(as.Date((subset_data$Date),format="%d/%m/%Y"), as.character(subset_data$Time), format="%d/%m/%Y %HH:%MM:%SS")),as.numeric(as.character(subset_data$Global_reactive_power)))

