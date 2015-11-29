#* @get /getImage
function(){
  #return("hello world")

library(tm)
library(wordcloud)

cname <- file.path("C:", "Users/nkaluthekkalansa/Documents/Research And Development/Machine Learning/Swabhiman") 
lords <- Corpus (DirSource(cname))
inspect(lords)
lords <- tm_map(lords, stripWhitespace)
lords <- tm_map(lords, removeWords, stopwords("english"))
lords <- tm_map(lords, stemDocument)
lords <- tm_map(lords, removePunctuation)
lords <- tm_map(lords, removeWords, c("ABA", "along","inclusive","style","NA"))
windows()
wordcloud(lords, max.words=100, random.order=FALSE, rot.per=0.35, use.r.layout=FALSE, colors=brewer.pal(3, "Dark2"))
dev.print(jpeg, file = "C:/Users/nkaluthekkalansa/Documents/Research And Development/Machine Learning/Swabhiman_DB/R_Output.jpeg", width = 768, height = 480,bg="white")
dev.off()
}
