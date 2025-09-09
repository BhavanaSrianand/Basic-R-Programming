
# Basic R Programming

In this project we import data into R and analyse the dimensions of this data using simple R programming.

<img width="267" height="189" alt="image" src="https://github.com/user-attachments/assets/f5dd0d4c-43ca-44a2-9368-37141f13f396" />

Data: A random sample of 55 Births in the United States in the year 2000

Parameters explored: year,	month,	date_of_month,	day_of_week,	births

Technique: Prof. Susan Holmes

Level: Beginner

Author: Bhavana Srianand


#  What will we do in this project?
1. Summarise the data
2. Calculate the number of births on Fridays
3. Calculate the number of births on Friday the 28th
4. Calculate the births on the weekends
5. Compare and contrast the average weekend and weekday births


# Summarising the data



<img width="371" height="136" alt="image" src="https://github.com/user-attachments/assets/45338c64-830c-47c7-858d-fe1fc189e624" />



 <pre> ```r 
head(births)
summary(births)
nrow(births)

   ``` </pre>
   

<img width="580" height="328" alt="Screenshot 2025-09-09 at 7 52 15 PM" src="https://github.com/user-attachments/assets/bbc86624-1d4f-4b29-90fd-29522758ea39" />



 # Births on a Friday

 <pre> ```r 
   
Fridays=births[which(births[,4]==5),]
Fridays=births[which(births$day_of_week==5),]
nrow(Fridays)

    ``` </pre>


 <img width="627" height="198" alt="Screenshot 2025-09-09 at 7 53 58 PM" src="https://github.com/user-attachments/assets/4ae17f0e-16ac-489e-9418-a707e289ad31" />


<img width="209" height="45" alt="Screenshot 2025-09-09 at 7 54 26 PM" src="https://github.com/user-attachments/assets/c8d92dbf-0600-4567-b6fa-d040a259b4c0" />



 # Births on Friday the 28th

 <pre> ```r 
 #Births on friday the 28th. Date is column 3 which we are setting=28
Fridays28=Fridays[which(Fridays[,3]==28),]
nrow(Fridays28)

#To get list of friday's which are not 28th
NotFriday28=Fridays[which(Fridays[,3]!=28),]
#Here != is the not sign

       ``` </pre>


<img width="444" height="66" alt="Screenshot 2025-09-09 at 7 56 29 PM" src="https://github.com/user-attachments/assets/fc2d00e1-e9c3-4551-a557-203baea9baa4" />


<img width="592" height="46" alt="Screenshot 2025-09-09 at 7 57 12 PM" src="https://github.com/user-attachments/assets/7e8f0c8f-2460-472c-93bf-3a1e767cbd32" />



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

<img width="443" height="745" alt="Screenshot 2025-09-09 at 7 58 51 PM" src="https://github.com/user-attachments/assets/9e4f7699-86ac-44f3-8808-969d2a902b96" />
 

<img width="626" height="52" alt="Screenshot 2025-09-09 at 8 00 54 PM" src="https://github.com/user-attachments/assets/f0628f29-161b-4a55-a8ad-da9db4e0bc06" />

# Getting subset of the data

<pre> ```r 
#Checking information for a subset of data
births[1:10,4]==5 #In the 1st 10 entries, checking for births on friday
births$day_of_week[1:10]

    ``` </pre>
    
<img width="717" height="82" alt="Screenshot 2025-09-09 at 8 02 11 PM" src="https://github.com/user-attachments/assets/ffa9a420-6ecc-47df-80e8-11d5c067a8dc" />
 

 This file has no missing data. However, if we are interested in looking for missing data.

<pre> ```r 
 is.na(births[,])

     ``` </pre>


<img width="319" height="721" alt="Screenshot 2025-09-09 at 8 03 25 PM" src="https://github.com/user-attachments/assets/66ff67dc-ca3c-487e-8aea-eba0d88017c1" />


#  Comparing Weekend and Weekday Births

<pre> ```r 
#Conditions
#Comparing and contrasting average weekend and weekday births
if (mean(Weekendbirths[,5])> mean(Weekdaybirths[,5]))
{ cat("More weekend babies on average") }else {
  cat("There are less weekend babies on average")
}

  
   ``` </pre>

   

<img width="627" height="133" alt="Screenshot 2025-09-09 at 8 04 43 PM" src="https://github.com/user-attachments/assets/16f85724-f8f6-48f5-9c5a-c7bd2b8f26c9" />



# Author: Bhavana Srianand

Thank you very much for visiting my page. Looking forward to publishing more such projects!


