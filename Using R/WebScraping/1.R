library(rvest)
library(dplyr)
url = "https://technoindiauniversity.ac.in/"
data = read_html(url)
colleges = data %>% html_nodes(".single-content a") %>% html_text()
desc = data %>% html_nodes(".single-content p") %>% html_text()
techno = data.frame(colleges,desc) 