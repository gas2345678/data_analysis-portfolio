
#We import the necessary libraries

library(dplyr)
library(ggplot2)



#We import the uber dataframe



uber_analytics = read.csv("C:/Users/PC/Downloads/uber_analytics.csv")
View(uber_analytics)



### Want to see the number of completed tracks
completed_drived = uber_analytics %>% filter(Booking.Status =="Completed")
View(completed_drived)




#Now we filter the number who were made by bike and the drop location was Yamuna Bank

#We define it with the next variable

bikes_drived = uber_analytics %>% filter(Vehicle.Type == "Bike" && Drop.Location == "Yamuna Bank")

View(bikes_drived)














