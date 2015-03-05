## How to generate plots from power consumption data
<b>Step 1.</b> 
The four R scripts will use the following R packages:
<li>sqldf</li>
<li>lubridate</li>

If your R does not have these packages installed, use the following R command to install them:
<p>install.packages(repo='http://cran.ism.ac.jp', c('sqldf', 'lubridate'))</p>

<b>Step 2.</b> Change working directory to where the plot?.R located.
Start R. Then from R prompt, run the following commands:

source('plot1.R')
source('plot2.R')
source('plot3.R')
source('plot4.R')

The commands will create four plots: plot1.png, plot2.png, plot3.png and plot4.png.
