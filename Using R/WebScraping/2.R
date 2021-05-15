# Save the html page https://www.mohfw.gov.in/. on your pc and select the directory.
library(rvest)
library(dplyr)
url="C:/Users/Dharmesh Harshwal/Desktop/R Assignment/MoHFW.html"
data=read_html(url)
content = data %>% html_table()
df = data.frame(content)
df= select(df,-6,-7,-8)
write.csv(df,"Covid.csv")