
#We import the necessary libraries

library(dplyr)
library(ggplot2)
library(tidyverse)



#We import the uber dataframe

uber_analytics <- read.csv("C:/Users/PC/Downloads/uber_analytics.csv")
View(uber_analytics)


#Number of columns
ncol(uber_analytics)


#Number of rows
nrow(uber_analytics)






#Worst rated uber driver


min_rating <- min(uber_analytics$Driver.Ratings,rm.na=TRUE)
min_rating




# Numbers of ubers vehicles grouped by vehicle type.


ggplot(data=uber_analytics,aes(x=Vehicle.Type)) +
  geom_bar() + labs(title="Uber vehicles registered")



payment_methods = uber_analytics %>% select(Payment.Method)


#Suppose we want the percentage of payment methods made by Uber drivers
#We perform the following operation

grouped_payments <- uber_analytics %>% 
  group_by(Payment.Method) %>%
  count() %>%
  ungroup() %>%
  mutate(percent= `n` /sum(`n`)*100)
  

grouped_payments


#If we want to visualize this data, the most appropiate visualization would be a piechart

#We select the payment method column to crate the piechart
ggplot(data=grouped_payments,aes(x=1,y=percent,fill=Payment.Method)) +
  geom_bar(stat="identity") +
  geom_text(aes(label=paste0(round(percent,1),"%")),
  position = position_stack(vjust=.5)) +
  coord_polar(theta="y")





### Want to see the number of completed tracks
completed_tracks = uber_analytics %>% filter(Booking.Status =="Completed")
View(completed_tracks)

#Total number of these completed tracks
count(completed_tracks)




#Now we filter the number who were made by bike and the drop location was Yamuna Bank

#We define it with the next variable

bikes_track = uber_analytics %>% filter(Vehicle.Type == "Bike" && Drop.Location == "Yamuna Bank")

View(bikes_track)

mean(bikes_track)























