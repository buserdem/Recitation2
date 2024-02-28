data<-read.csv("https://people.sc.fsu.edu/~jburkardt/data/csv/biostats.csv")

colnames(data)<-c("Name","Sex","Age","Height","Weight")

plot(data$Height,data$Weight,col="lightblue",lwd=3,
     xlab="Height",ylab="Weight",
     main="Relationship between Height and Weight")

#print the plot as pdf 

dev.print(pdf,"part_vi.pdf")



install.packages("babynames")
library(babynames)

View(babynames)

baby_10<-babynames[sample(nrow(babynames),size=10,replace=F),]

barplot(baby_10$n,names.arg=baby_10$name,
        col=ifelse())