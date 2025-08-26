setwd("D:\\IT24100152")
getwd()
#Q1 import dataset
Delivery_Times<-read.table("Exercise - Lab 05.txt",header=TRUE , sep = ",")
fix(Delivery_Times)

#Q2 
#histogram for deliver times using nine class intervals where the lower limit is 20 and upper limit is 70
hist(Delivery_Times$Delivery,
     breaks = seq(20, 70, length  = 10),
     right = FALSE,
     main = "Histogram of Delivery Times",
     xlab = "Delivery Times",
     ylab = "Frequency",
     col = "lightblue",
     border = "black")

#Q4 cumulative frequency polygon (ogive) for the data
hist_data <- hist(Delivery_Times$Delivery,
                  breaks = seq(20, 70, length = 10),
                  right = FALSE,
                  plot = FALSE)


cumulative_freq <- cumsum(hist_data$counts)


plot(hist_data$mids, cumulative_freq,
     type = "o",
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Times",
     ylab = "Cumulative Frequency",
     pch = 16,
     col = "blue")


