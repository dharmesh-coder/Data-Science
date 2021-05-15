library(dplyr)
library(rvest)
library(NLP)
library(tm)

url <- "http://www.analytictech.com/mb021/mlk.htm"

data <- read_html(url)	
text <- data %>% html_nodes("p") %>% html_text()
text

doc <- Corpus(VectorSource(text))
inspect(doc)



doc <- tm_map(doc,removeNumbers)

doc <- tm_map(doc,removeWords,stopwords("english"))

doc <- tm_map(doc,stripWhitespace)

doc <- tm_map(doc,tolower)

dtm <- DocumentTermMatrix(doc)

freq <- colSums(as.matrix(dtm))

ord <- order(freq,decreasing=TRUE)

freq[head(ord,n=20)]

findFreqTerms(dtm,lowfreq=5)

findAssocs(dtm,terms='life',corlimit=0.7)

removeSparseTerms(dtm,0.3)
