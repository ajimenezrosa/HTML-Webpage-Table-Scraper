install.packages("readxl") #Install readxl package as necessary
library(readxl) #Load readxl package

install.packages("rvest") #Install the rvest package
library(rvest) #Load the rvest package


url <- "http://www.espn.com/college-football/rankings"
pg <- read_html(url) #Downloads the webpage
tb <- html_table(pg, fill = TRUE)

ap_ranking<-tb[[1]]
ap_ranking<-ap_ranking[-26,] #remove the last row

coach_ranking <- tb[[2]]
coach_ranking<-coach_ranking[-26,] #remove the last row