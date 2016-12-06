library(dplyr)
library(knitr)
BookTwo <- read.csv("FiveYears.csv", header = TRUE, stringsAsFactors = FALSE)
kable(head(BookTwo))
for(i in c(3:20:ncol(BookTwo))){
  BookTwo[,i] <- as.numeric(BookTwo[,i])}
BookTwo[is.na(BookTwo)] <- 0 
BookTwo2 <- gather(BookTwo,Date, Inventory_Used, -c(Item_Code, Description))


BookTwo2$Date <- c("X1.1.2012", "X2.1.2012", "X3.1.2012", "X4.1.2012", "X5.1.2012", "X6.1.2012", "X7.1.2012", "X8.1.2012", "X9.1.2012", "X10.1.2012", "X11.1.2012", "X12.1.2012","X1.1.2013", "X2.1.2013", "X3.1.2013", "X4.1.2013", "X5.1.2013", "X6.1.2013", "X7.1.2013", "X8.1.2013", "X9.1.2013", "X10.1.2013", "X11.1.2013", "X12.1.2013","X1.1.2014", "X2.1.2014", "X3.1.2014", "X4.1.2014", "X5.1.2014", "X6.1.2014", "X7.1.2014", "X8.1.2014", "X9.1.2014", "X10.1.2014", "X11.1.2014", "X12.1.2014","X1.1.2015", "X2.1.2015", "X3.1.2015", "X4.1.2015", "X5.1.2015", "X6.1.2015", "X7.1.2015", "X8.1.2015", "X9.1.2015", "X10.1.2015", "X11.1.2015", "X12.1.2015","X1.1.2016", "X2.1.2016", "X3.1.2016", "X4.1.2016", "X5.1.2016", "X6.1.2016", "X7.1.2016", "X8.1.2016", "X9.1.2016", "X10.1.2016")

BookTwo2$Date <- as.Date(substring(BookTwo2$Date, 2), "%m.%d.%Y")

kable(head(BookTwo2))
str(BookTwo2)
