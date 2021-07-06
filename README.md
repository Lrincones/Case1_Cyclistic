# Case1_Cyclistic
Case Study 1: How Does a Bike-Share Navigate Speedy Success?


The RStudio files used for Case1 Analysis are<br>
* Case1_Reading_Files.R This file is the code for reading, merging and saving the merged file, to serve as input for the Analysis<br>
* Case1_Analyze.Rmd This file is the code for the analysis done using R, it renders in HTML<br>
* Case1_Study_Road_Map.Rmd This file describe the **APPASA**  six phases recommended by Google for Data Analysis<br>




**Reading the files**<br>
The 14 files reside in one folder, to be read and prepare one by one and merged into a single file. The file is written in CSV format to feed the code for the analysis.


**Analyzing the CSV file divvy_data.csv**<br>

The code generates the basic bar charts used to answer the question assigned to me in the case.
**How do annual members and casual riders use Cyclistic bikes differently? **<br>

The first part of the code, is for libraries load and make the variable "wday_start" a factor<br>

The question can be answered using basic bar charts comparing members and casuals. The code will generate eight graphs, using ggplot<br>

* Percentage of trips by membership<br>
* Total duration of trips by membership<br>
* Morning trips 7 am to 12 noon by membership<br>
* Afternoon trips 1 pm to 6 pm  by membership<br>
* Winter trips  by membership<br>
* Spring trips  by membership<br>
* Summer trips  by membership<br>
* Fall trips  by membership<br>

The analysis will be complemented with Tableau public view.


**Case Study Road Map**

This code generates a HTML file to describe my journey for this part of my Capstone project (Case1)<br>
describes the work done using the google analytics process<br>
**ASK**
* APPASA  (Ask, Prepare, Process, Analyze, Share and Act)<br>
* How can my insights drive business decisions?<br>
* Identify the business task<br
* Consider key stakeholders<br>

**PREPARE**<br>
* How The data is organized<br> 
* The data provided per trip and rider type will describe the trips, I need to discover the differences that matters for my question<br>
* The data is organized by month, the data it is consistent with the month indicated by the name<br>
* I used six variables from the original file<br>

**PROCESS**<br>
* How each file was processed and the columns created for the Analysis
* The usage of lubridate<br>

**ANALYZE**<br>
* The analysis showed that the members have more trips than casuals, however time used by casuals was greater than members<br>
* How do annual members and casual riders use Cyclistic bikes differently? Is indicated in the charts done using ggplot and tableau<br>

**SHARE**<br>
* I use simple visualizations, bar charts and histograms to facilitate the communications with the different stakeholders<br> 
