In this project we import data into R and analyse the dimensions of this data using simple R programming.

<img width="267" height="189" alt="image" src="https://github.com/user-attachments/assets/f5dd0d4c-43ca-44a2-9368-37141f13f396" />

Data: A random sample of 55 Births in the United States in the year 2000

Parameters explored: year,	month,	date_of_month,	day_of_week,	births

Technique: Prof. Susan Holmes

Level: Beginner

Author: Bhavana Srianand


#  What will we do in this project?
1. Summarise the data
2. To calculate the number of births on Fridays
3. To calculate the number of births on Friday the 28th
4. To calculate the births on the weekends
5. Comparing and contrasting the average weekend and weekday births


# Summarising the data



<img width="371" height="136" alt="image" src="https://github.com/user-attachments/assets/45338c64-830c-47c7-858d-fe1fc189e624" />



 <pre> ```r 
head(births)
summary(births)
nrow(births)

   ``` </pre>
   


        year          month      date_of_month    day_of_week  
 Min.   :2000   Min.   :1.00   Min.   : 1.00   Min.   :1.00  
 1st Qu.:2000   1st Qu.:1.00   1st Qu.: 7.00   1st Qu.:2.00  
 Median :2000   Median :1.00   Median :13.00   Median :4.00  
 Mean   :2000   Mean   :1.38   Mean   :13.72   Mean   :4.04  
 3rd Qu.:2000   3rd Qu.:2.00   3rd Qu.:19.00   3rd Qu.:6.00  
 Max.   :2000   Max.   :2.00   Max.   :31.00   Max.   :7.00  
     births     
 Min.   : 7657  
 1st Qu.: 8879  
 Median :12048  
 Mean   :11070  
 3rd Qu.:12466  
 Max.   :13032 



 # Births on a Friday

 <pre> ```r 
   
Fridays=births[which(births[,4]==5),]
Fridays=births[which(births$day_of_week==5),]
nrow(Fridays)

    ``` </pre>

 [1] 7

   year month date_of_month day_of_week births
7  2000     1             7           5  12516
14 2000     1            14           5  12180
21 2000     1            21           5  11953
28 2000     1            28           5  11934
35 2000     2             4           5  12035
42 2000     2            11           5  12411
49 2000     2            18           5  12406



 # Births on Friday the 28th

 <pre> ```r 
 #Births on friday the 28th. Date is column 3 which we are setting=28
Fridays28=Fridays[which(Fridays[,3]==28),]
nrow(Fridays28)

#To get list of friday's which are not 28th
NotFriday28=Fridays[which(Fridays[,3]!=28),]
#Here != is the not sign

       ``` </pre>



[1] 1 : Births on Friday the 28th.


  year month date_of_month day_of_week births
28 2000     1            28           5  11934




# Weekend Births

 <pre> ```r 
#If I am interested in looking at Weekend births i.e. Saturday or Sunday
Weekendbirths=births[which(births[,4]%in%c(6,7)),]
Weekendbirths=births[which(births[,4] >=6),] #alternatively
Weekendbirths
# %in% sign represents birth either on Saturday or Sunday.

Weekdaybirths=births[which(births[,4]<6),]
Weekdaybirths
#Weekday births
     ``` </pre>


 [1] 15 :  Weekend Births  
 

    year month date_of_month day_of_week births
1  2000     1             1           6   9083
2  2000     1             2           7   8006
8  2000     1             8           6   8934
9  2000     1             9           7   7949
15 2000     1            15           6   8525
16 2000     1            16           7   7657
22 2000     1            22           6   8855
23 2000     1            23           7   7856
29 2000     1            29           6   8805
30 2000     1            30           7   7764
36 2000     2             5           6   8624
37 2000     2             6           7   7862
43 2000     2            12           6   8836
44 2000     2            13           7   7933
50 2000     2            19           6   8861


# Getting subset of the data

<pre> ```r 
#Checking information for a subset of data
births[1:10,4]==5 #In the 1st 10 entries, checking for births on friday
births$day_of_week[1:10]

    ``` </pre>
    

 births$day_of_week[1:10]
 [1] 6 7 1 2 3 4 5 6 7 1

 births[1:10,4]==5 
 [1] FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE

 

 This file has no missing data. However, if we are interested in looking for missing data.

<pre> ```r 
 is.na(births[,])

     ``` </pre>


#  Comparing Weekend and Weekday Births

<pre> ```r 
#Conditions
#Comparing and contrasting average weekend and weekday births
if (mean(Weekendbirths[,5])> mean(Weekdaybirths[,5]))
{ cat("More weekend babies on average") }else {
  cat("There are less weekend babies on average")
}

  
   ``` </pre>


There are less weekend babies on average



# Author: Bhavana Srianand

Thank you very much for visiting my page. Looking forward to publishing more such projects!


