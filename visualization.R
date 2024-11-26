library(tidyverse)  #Initializing the tidyverse library

df <- read.csv("vw.csv")  #Reading the csv file and storing the data set in df variable

x <- df$transmission #Storing Independent variable 

y <- df$price #Storing Dependent variable

#boxplot
boxplot(y ~ x,
        main="Boxplot showing the used Volkswagen car prices among 
              Automatic, Manual and Semi-Auto transmission type.",
        xlab="Transmission Types",
        ylab="Price in pounds",
        col = c("brown1" , "grey", "blue"),
        ylim = c(0,70000),
        pch = 19,
        frame = T)

#legend 
legend("topleft", inset = 0.02, 
       legend = c("Automatic", "Manual", "Semi-Auto"),
       col = c("brown1", "grey", "blue"),
       title = "Transmission type", lty = 1:1, cex = 0.8)

#Histogram
h <-hist(df$price, breaks = 50,
         main = "Histogram showing the used volkswagen car prices among
                 Automatic, Manual and Semi-Auto transmission type.",
         xlab = "Price in pounds",
         ylab = "Frequency",
         col = c("bisque"),
         xlim = c(0,70000),
         ylim = c(0,1200))

y <-df$price #Storing dependent variable
dtMin=min(y)   #Minimum value present in the data set
dtMax=max(y)   #Maximum value present in the data set
dtMean=mean(y) #Calculating the mean of the dependent variable
dtSd=sd(y)     #calculating the standard deviation

x <-seq(dtMin, dtMax, 1)
yn <-dnorm(x, mean=dtMean, sd=dtSd) 
box.size <- diff(h$mids[1:2]) *length(y)
yn <-yn*box.size
lines(x, yn, col="blue")
