library(sqldf)
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
# For PNG saving
png('plot1.png', width=480, height=480,bg="white")
hist(pwrcon$Global_active_power,col='#EC3F00', main='Global Active Power', xlab='Global Active Power (kilowatts)')
dev.off()
# For screen viewing
hist(pwrcon$Global_active_power,col='#EC3F00', main='Global Active Power', xlab='Global Active Power (kilowatts)')
