library(NLP)

library(tm)

library(wordcloud)

library(wordcloud2)

library(RColorBrewer)

library(SnowballC)

path <- 'H:/BCA (18-21)/6th Semester (Final)/Data Science through R/R Assignment/3/test.txt'

con <- file(path,open='r')

text=readLines(con)

doc <- Corpus(VectorSource(text))

inspect(doc)
 for(j in seq(doc)){ doc[[j]] <- gsub("/", " ", doc[[j]])  
 doc[[j]] <- gsub("@", " ", doc[[j]])
 doc[[j]] <- gsub("\\|", " ", doc[[j]])
 doc[[j]] <- gsub("#", " ", doc[[j]])
 doc[[j]] <- gsub("-", " ", doc[[j]])
 }

doc <- tm_map(doc,removeNumbers)

doc <- tm_map(doc,removeWords,stopwords("english"))

doc <- tm_map(doc,stripWhitespace)

doc <- tm_map(doc,tolower)

doc <- tm_map(doc,removeWords,c("Company","Manager","Assistant"))


dtm <- DocumentTermMatrix(doc)

dtm

freq = colSums(as.matrix(dtm))

ord = order(freq,decreasing=TRUE)
freq[head(ord)]

names(freq)

barplot(head(ord), las = 2, names.arg = names(freq[head(ord)]),
col ="lightblue", main ="Most frequent words", ylab = "Word fre-
quencies")

wordcloud(words = names(freq), freq , min.freq = 1,max.words=200,
random.order=FALSE, rot.per=0.35,colors=brewer.pal(8, "Dark2"))

library(SentimentAnalysis)

library(dplyr)

library(zeallot)


sent = analyzeSentiment(dtm, language = "english")
sent = sent[,1:4]
sent = as.data.frame(sent)
head(sent)

summary(sent$SentimentGI)

library(syuzhet)

d<-get_nrc_sentiment(text)
head (d,10)
