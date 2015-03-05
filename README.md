## How to generate plots from power consumption data
<b>Step 0.</b> Download data from https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip
On Linux operating system, execute the following command:
wget https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip

<b>Step 1.</b> Unzip household_power_consumption.zip. There will be 
a file household_power_consumption.txt created. Move the household_power_consumption.txt file
to a directory containing R script files, i. e. plot1.R, plot2.R, plot3.R and plot4.R.

<b>Step 2.</b> Change working directory to where the plot?.R located.
Start R. Then from R prompt, run the following commands:

source('plot1.R')
source('plot2.R')
source('plot3.R')
source('plot4.R')

The commands will create four plots: plot1.png, plot2.png, plot3.png and plot4.png.
