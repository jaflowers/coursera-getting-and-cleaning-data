#Coursera Getting and Cleaning Data Course Project
              # 7.25.2015

#clears memory
  rm(list=ls())

#Set Working Directory
  setwd("C:/Users/jflowers/Desktop/Coursera")

#Read in training and testing data
  training=read.csv("UCI HAR Dataset/train/X_train.txt",sep="",header=FALSE)
  training[,562]=read.csv("UCI HAR Dataset/train/Y_train.txt",sep="",header=FALSE)
  training[,563]=read.csv("UCI HAR Dataset/train/subject_train.txt",sep="",header=FALSE)

  testing = read.csv("UCI HAR Dataset/test/X_test.txt",sep="",header=FALSE)
  testing[,562]=read.csv("UCI HAR Dataset/test/Y_test.txt",sep="",header=FALSE)
  testing[,563]=read.csv("UCI HAR Dataset/test/subject_test.txt",sep="",header=FALSE)

  activityLabels=read.csv("UCI HAR Dataset/activity_labels.txt",sep="",header=FALSE)

#Read features and change feature names 
  features = read.csv("UCI HAR Dataset/features.txt",sep="",header=FALSE)
  features[,2]=gsub('-mean','Mean',features[,2])
  features[,2]=gsub('-std','Std',features[,2])
  features[,2]=gsub('[-()]','',features[,2])

#Merge training and test data sets 
  allData=rbind(training,testing)

#Return only mean and standardd deviation of data set
  Mean_STD<-grep(".*Mean.*|.*Std.*",features[,2])

#Change features table to just MEAN and STD
  features<-features[Mean_STD,]

#Combine with the last two columns (subject and activity)
  Mean_STD<-c(Mean_STD, 562, 563)

#Remove unwanted columns from allData
  allData<-allData[,Mean_STD]

#Add the column names (features) to allData
  colnames(allData)<-c(features$V2,"Activity", "Subject")
  colnames(allData)<-tolower(colnames(allData))

  currentActivity=1
for (currentActivityLabel in activityLabels$V2)
  {
  allData$activity<-gsub(currentActivity,currentActivityLabel,allData$activity)
  currentActivity<-currentActivity+1
}

  allData$activity<-as.factor(allData$activity)
  allData$subject<-as.factor(allData$subject)

  tidy_data=aggregate(allData,by=list(activity=allData$activity,subject=allData$subject),mean)

#Remove subject and activity column (mean doesnt make sense for these columns)
tidy_data[,90] = NULL
tidy_data[,89] = NULL

#Save table as txt document
write.table(tidy_data,"tidy_data.txt", row.name=FALSE,sep="\t")
write.table(tidy_data, "tidy_data.txt", sep="\t")

