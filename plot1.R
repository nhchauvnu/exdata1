# Using the sqldf package
library(sqldf)
pwrcon = read.csv.sql('household_power_consumption.txt', header=T, sep=';',
	sql='select * from file where Date=\'1/2/2007\' or Date=\'2/2/2007\'')
# For PNG saving
png('plot1.png', width=480, height=480,bg="white")
hist(pwrcon$Global_active_power,col='#EC3F00', main='Global Active Power', xlab='Global Active Power (kilowatts)')
dev.off()
# For screen viewing
hist(pwrcon$Global_active_power,col='#EC3F00', main='Global Active Power', xlab='Global Active Power (kilowatts)')
