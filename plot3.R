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

# plot to screen
pl = function() {
	plot(pwrcon$Sub_metering_1, type='l', ylab='Energy sub metering', xlab='', xaxt='n')
	lines(pwrcon$Sub_metering_2, col='#EC3F00')
	lines(pwrcon$Sub_metering_3, col='#7300FF')
	legend("topright", pch=-1, lty=1, col=c('#000000','#EC3F00','#7300FF'), legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'))
	axis(side=1, at=pos, labels=lbl)
}

# Copy to PNG
png('plot3.png', width=480, height=480)
pl()
dev.off()

# Plot on screen
pl()
