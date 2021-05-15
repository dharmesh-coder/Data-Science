id <- c(1:10)
name <- c('Ram','Shyam','Hari','Sita','Anand','Sunny','Sweta','Dharmesh','Dipanjan','Sinu')
gender <- c('M','M','M','F','M','M','F','M','M','F')
do_birth <- as.Date(c("1998-01-01", "1998-09-23", "1998-11-15", "1998-05-11","1998-02-27","1998-06-01","1998-06-14","1998-03-31","1998-07-08","1998-11-30"))
do_adm <- as.Date(c("2003-01-01", "2004-09-23", "2005-11-15", "2003-05-11","2007-02-27","2008-06-01","2006-06-14","2005-03-31","2006-07-08","2013-11-30"))
payment_made <- c('Y','N','N','Y','Y','Y','N','Y','N','Y')
mp_perc <- c(85,82,80,72,70,92,94,89,86,69)
hs_perc <- c(89,82,72,80,92,94,86,69,70,79)

studata <- data.frame(ID=id,Name=name,Gender=gender,DO_Birth=do_birth,
DO_Admission=do_adm,Payment_Made=payment_made,MP_Percentage=mp_perc,HS_Percentage=hs_perc)


year <- c(2016,2016,2017,2017,2018,2018,2019,2019,2020,2020)
stream=c("BCA","CSE","BCA","CSE","BCA","CSE","BCA","CSE","BCA","CSE")
tot_count =c(16,20,25,30,35,50,40,59,80,100)
Total_Employement_Placement =data.frame(Year=year,Stream=stream,Total_Count=tot_count)


library(DescTools)
library(modeest)

mean(studata$MP_Percentage)

median(studata$MP_Percentage)

mean(studata[studata$Gender=="M",]$MP_Percentage)
mean(studata[studata$Gender=="F",]$MP_Percentage)

summary(studata)
summary(Total_Employement_Placement)
mean(as.numeric(Sys.Date()-studata$DO_Birth))
mean(as.numeric(Sys.Date()-studata[studata$Gender=="M",]$DO_Birth))


a <- mean(as.numeric(Sys.Date()-studata[studata$Gender=="M",]$DO_Birth))

a <- mean(as.numeric(Sys.Date()-studata[studata$Stream=="BCA",]$DO_Birth))
year = a/365
round(year)

a <- nrow(studata[studata$Gender == "M",])
b <- nrow(studata[studata$Gender == "F",])

cat(a,":",b,"\n")