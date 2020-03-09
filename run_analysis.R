library(dplyr)
library(tidyverse)

link <-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

if (!file.exists("./data")){
  dir.create("./data")
}

download.file(link,destfile = "./data/project.zip",methods = curl)

if (!file.exists("./data/data_week")){
  dir.create("./data/data_week")
}

outPath <- "./data/data_week"
localfile <- "./data/project.zip"

unzip(localfile,exdir=outPath)

trainx <- read.table("./data/data_week/UCI HAR Dataset/train/X_train.txt")
testx <- read.table("./data/data_week/UCI HAR Dataset/test/X_test.txt")

trainy <- read.table("./data/data_week/UCI HAR Dataset/train/y_train.txt") 
testy <- read.table("./data/data_week/UCI HAR Dataset/test/y_test.txt")

trainsubject <- read.table("./data/data_week/UCI HAR Dataset/train/subject_train.txt") 
testsubject <- read.table("./data/data_week/UCI HAR Dataset/test/subject_test.txt") 

features <- read.table("./data/data_week/UCI HAR Dataset/features.txt") 
labels <- read.table("./data/data_week/UCI HAR Dataset/activity_labels.txt") 

joindata <- rbind(trainx,testx); joinlabels <- rbind(trainy,testy); joinsubjects <- rbind(trainsubject,testsubject) 

names(joindata) = features[[2]] 
names(joinlabels) = c("Activity_id") 
names(joinsubjects) = c("Subjects") 

means <- grep("mean",features[[2]]) 
std <- grep("std",features[[2]]) 
merged <- c(means,std)  

new_data <- joindata[merged] 
names(labels) = c("Activity_id","Activityname") 
activities <- merge(labels,joinlabels,"Activity_id") 
new_data$activities <- activities[[2]] 
new_data$subjects <- joinsubjects[[1]] 

names(new_data) <- gsub("\\(\\)","",names(new_data)) 
names(new_data) <- gsub("-","_",names(new_data)) 
final_set<-aggregate(new_data[,1:79],list(activities = new_data$activities, subjects=new_data$subjects),mean, na.rm=TRUE)

write.table(final_set,"./final_set.txt",row.name=FALSE) 