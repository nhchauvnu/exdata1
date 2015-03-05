library(sqldf)
library(lubridate)
# If the text file does not exists then get it
if (!file.exists('household_power_consumption.txt')) {
	# If the ZIP file does not exist then download it
	if (!file.exists('household_power_consumption.zip')) {
		download.file('http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip',
		destfile='household_power_consumption.zip')
	}
	system('unzip household_power_consumption.zip')
}

pwrcon = read.csv.sql('household_power_consumption.txt', header=T, sep=';',
	sql='select * from file where Date=\'1/2/2007\' or Date=\'2/2/2007\'')
# Prepare data
ldate = dmy(pwrcon$Date)
wday = weekdays(ldate, abbreviate=T)
n = length(wday)
pos = which(duplicated(wday)==F)
lbl = weekdays(ldate[pos], abbr=T)
pos = c(pos, n+1)
lbl = c(lbl, weekdays(ddays(1)+ldate[n],abbreviate=T))

# Plot to PNG file
png('plot2.png', width=480, height=480)
plot(pwrcon$Global_active_power, type='l', ylab='Global Active Power (kilowatts)', xlab='', xaxt='n')
axis(side=1, at=pos, labels=lbl)
dev.off()

# plot to screen
plot(pwrcon$Global_active_power, type='l', ylab='Global Active Power (kilowatts)', xlab='', xaxt='n')
axis(side=1, at=pos, labels=lbl)
