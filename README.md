## How to generate plots from power consumption data
Step 1. The four R scripts will use the following R packages:
* sqldf
* lubridate

If your R does not have these packages installed, use the following R command to install them:
* install.packages(repo='http://cran.ism.ac.jp', c('sqldf', 'lubridate'))

Step 2. Change working directory to where the plot?.R located.
Start R. Then from R prompt, run the following commands:

source('plot1.R')
source('plot2.R')
source('plot3.R')
source('plot4.R')

The commands will create four plots: plot1.png, plot2.png, plot3.png and plot4.png.
