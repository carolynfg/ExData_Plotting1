setwd("C:/Users/Carolyn/Documents/R/Exploratory Data Analysis")
files <- file("household_power_consumption.txt")
data$Date <- as.Date(data$Date, format = '%d/%m/%Y')  
data$DateTime <- as.POSIXct(paste(data$Date, data$Time))
if(!file.exists('figures')) dir.create('figures')  
png(filename = './figures/plot2.png', width = 480, height = 480, units='px')
Sys.setlocale(category = "LC_ALL", locale = "english")  
plot(data$DateTime, data$Global_active_power, type = '1', xlab = '', ylab = 'Global Active Power (kilowatt)')
dev.off()