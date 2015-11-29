install.packages("wordcloud")
install.packages("tm")
Needed <- c("tm", "SnowballCC", "RColorBrewer", "ggplot2", "wordcloud", "biclust", "cluster", "igraph", "fpc")   
install.packages(Needed, dependencies=TRUE) 

cname
dir(cname)  


library(tm)
library(wordcloud)
cname <- file.path("C:", "Users/nkaluthekkalansa/Documents/Research And Development/Machine Learning/Swabhiman") 
lords <- Corpus (DirSource(cname))
inspect(lords)
lords <- tm_map(lords, stripWhitespace)
lords <- tm_map(lords, removeWords, stopwords("english"))
lords <- tm_map(lords, stemDocument)
lords <- tm_map(lords, removePunctuation)
wordcloud(lords, scale=c(5,0.5), max.words=100, random.order=FALSE, rot.per=0.35, use.r.layout=FALSE, colors=brewer.pal(8, "Dark2"))

  
wordcloud(lords, colors=brewer.pal(8, "Dark2"))
dev.print(png, file = "myplot.png", width = 643, height = 60)
dev.off()
dev.print(output, 'C:/Users/nkaluthekkalansa/Documents/Research And Development/Machine Learning/Swabhiman_DB/filename.pdf')



  output$plot <- renderPlot({ v <- terms() wordcloud_rep(names(v), v, scale=c(4,0.5),
                  min.freq = input$freq, max.words=input$max,
                  colors=brewer.pal(8, "Dark2"))
  })
  
  
  
  
  
  
  
  
  
  




