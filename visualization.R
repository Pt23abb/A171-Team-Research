

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


