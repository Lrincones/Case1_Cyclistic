# Script to read, load the files
# Each file is prepared before merging into a single file.

# loading libraries the set of libraries I used for the whole project
library("readr")
library(tidyverse)
library(lubridate)
library(ggplot2)
library(dplyr)
library(scales)
library(tidyr)
library(stringr)
library(tools)
library(rticles)

# getting the files from the directory
path_files <- "~/Documents/Case_1/0-divvy_files"
archivos <- list.files(path = path_files,recursive = F , 
                       all.files = FALSE, full.names = TRUE, pattern = "*zip*")
# reading
num_arch = length(archivos)
arch <- paste(file_path_sans_ext(basename(archivos[1])), ".csv", sep = "")
temp1 <- read.csv(unzip(archivos[1], arch))
temp2 <- select(temp1, ride_id, start_station_id, end_station_id, started_at, ended_at, member_casual)
temp3 <- temp2
# converting to dates using lubridate
temp3$started_at <- ymd_hms(temp3$started_at)
temp3$ended_at <- ymd_hms(temp3$ended_at)
# adding duration in seconds
temp3 <- mutate(temp3, duration = (ended_at - started_at))
# not using rows with duration zero
temp3 <- subset(temp3, temp3$duration > 0)
# adding week day for start and end
temp3 <- mutate(temp3, wday_start = wday(ymd_hms(started_at),label = TRUE, abbr =TRUE))
temp3 <- mutate(temp3, wday_end = wday(ymd_hms(ended_at),label = TRUE, abbr =TRUE))
# Creating start and ended hours
temp3 <- mutate(temp3, hour_trip_start = hour(temp3$started_at))
temp3 <- mutate(temp3, hour_trip_ended = hour(temp3$ended_at))
divvy_data <- temp3
######### 

arch_read = 2
while (arch_read <= num_arch){
        arch <- paste(file_path_sans_ext(basename(archivos[arch_read])), ".csv", sep = "")
        temp1 <- read.csv(unzip(archivos[arch_read], arch))
        temp2 <- select(temp1, ride_id, start_station_id, end_station_id, started_at, ended_at, member_casual)
        temp3 <- temp2
        # converting to dates using lubridate
        temp3$started_at <- ymd_hms(temp3$started_at)
        temp3$ended_at <- ymd_hms(temp3$ended_at)
        # adding duration in seconds
        temp3 <- mutate(temp3, duration = (ended_at - started_at))
        # not using rows with duration zero
        temp3 <- subset(temp3, temp3$duration > 0)
        # adding week day for start and end
        temp3 <- mutate(temp3, wday_start = wday(ymd_hms(started_at),label = TRUE, abbr =TRUE))
        temp3 <- mutate(temp3, wday_end = wday(ymd_hms(ended_at),label = TRUE, abbr =TRUE))
        # Creating start and ended hours
        temp3 <- mutate(temp3, hour_trip_start = hour(temp3$started_at))
        temp3 <- mutate(temp3, hour_trip_ended = hour(temp3$ended_at))
        divvy_data <- rbind(divvy_data, temp3)
        arch_read = arch_read + 1
}
# writing the merge file
write.csv(divvy_data, file = "divvy_data.csv")


