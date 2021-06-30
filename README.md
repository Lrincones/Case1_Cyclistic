# Case1_Cyclistic
Case Study 1: How Does a Bike-Share Navigate Speedy Success?

Data Source<br>
The data is in the divvy website<br> 
“ https://divvy-tripdata.s3.amazonaws.com/index.html ”<br>
The data I will use is organized in<br> 
* Monthly Trip data, latest 14 months<br>

Each trip is anonymized and includes:<br>
* Trip start day and time<br>
* Trip end day and time<br>
* Trip start station<br>
* Trip end station<br>
* Rider type<br>

The data has been processed to remove trips that are taken by staff as they service and inspect the system; and any trips that were below 60 seconds in length (potentially false starts or users trying to re-dock a bike to ensure it was secure).<br>

 description of all data sources used<br>

* One file per month from April 2020 to May 2021<br>
* Each file with 13 columns will use 6 to work with.
* Columns indicated below<br> 
* **ride_id**<br>
* rideable_type<br>
* **started_at**<br>
* **ended_at**<br>
* start_station_name<br>
* **start_station_id**<br>
* end_station_name<br>
* **end_station_id**<br>
* start_lat<br>
* start_lng<br>
* end_lat<br>
* end_lng<br>
* **member_casual**<br>

The six columns in bold will be used<br>
The four geo location columns (lat and long) will not be used to analyze differences<br>
The rideable type is a constant value, will not be used<br>
The two station name will not be used, the stations id suffice<br>
