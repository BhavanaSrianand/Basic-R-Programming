births=read.csv("birthn.csv",row.names=1)
head(births)
summary(births)
nrow(births)

attach(births)

#I am interested in looking at births on friday
Fridays=births[which(births[,4]==5),]
Fridays=births[which(births$day_of_week==5),]
nrow(Fridays)
#day of week is column 4 which we want to set at 5 (friday)
#Here we use double equals to sign to avoid confusion with the assignment sign.
#Assignment is either done using arrows or double equals to


#Births on friday the 28th. Date is column 3 which we are setting=28
Fridays28=Fridays[which(Fridays[,3]==28),]
nrow(Fridays28)

#To get list of friday's which are not 28th
NotFriday28=Fridays[which(Fridays[,3]!=28),]
#Here != is the not sign

#If I am interested in looking at Weekend births i.e. Saturday or Sunday
Weekendbirths=births[which(births[,4]%in%c(6,7)),]
Weekendbirths=births[which(births[,4] >=6),] #alternatively
Weekendbirths
# %in% sign represents birth either on Saturday or Sunday.

Weekdaybirths=births[which(births[,4]<6),]
Weekdaybirths
#Weekday births

#Checking information for a subset of data
births[1:10,4]==5 #In the 1st 10 entries, checking for births on friday
births$day_of_week[1:10]

#To check for missing data
is.na(births[,])

#Conditions
#Comparing and contrasting average weekend and weekday births
if (mean(Weekendbirths[,5])> mean(Weekdaybirths[,5]))
{ cat("More weekend babies on average") }else {
  cat("There are less weekend babies on average")
}




