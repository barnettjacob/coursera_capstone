library(dplyr)

us_twitter <- readLines('data/en_US/en_US.twitter.txt')
us_twitter <- data.frame(us_twitter, stringsAsFactors = F)
names(us_twitter) <- c('text')

us_twitter <- us_twitter %>% mutate(characters = nchar(text))

us_blogs <- readLines('data/en_US/en_US.blogs.txt')
us_blogs <- data.frame(us_blogs, stringsAsFactors = F)
names(us_blogs) <- c('text')

us_blogs <- us_blogs %>% mutate(characters = nchar(text))

us_news <- readLines('data/en_US/en_US.news.txt')
us_news <- data.frame(us_news, stringsAsFactors = F)
names(us_news) <- c('text')

us_news <- us_news %>% mutate(characters = nchar(text))


us_twitter_lines <- readLines('data/en_US/en_US.twitter.txt')
