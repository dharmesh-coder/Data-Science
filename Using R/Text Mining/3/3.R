library(pdftools)
files <- list.files(pattern = "pdf$") 
files
opinions <- lapply(files, pdf_text)
library(tm)
corp <- Corpus(URISource(files),
                readerControl = list(reader = readPDF))
corp <- tm_map(corp, removePunctuation, ucp = TRUE) 
opinions <- TermDocumentMatrix(corp, 
                                    control = 
                                      list(stopwords = TRUE,
                                           tolower = TRUE,
                                           stemming = TRUE,
                                           removeNumbers = TRUE,
                                           bounds = list(global = c(3, Inf))))

inspect(opinions)

ft <- as.matrix(opinions[ft,])
findFreqTerms(opinions, lowfreq = 100)

sort(apply(ft.tdm, 1, sum), decreasing = TRUE)

findAssocs(opinions,terms="state",corlimit=0.8)

