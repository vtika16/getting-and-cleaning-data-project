##setting directory to appropriate folder##
setwd("/Users/vtika/Desktop/R Programming/Getting And Cleaning Data/Week 4/")

library(reshape2)

dataset <- "getdata_dataset.zip"

## Download and unzip the dataset:
if (!file.exists(dataset)){
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileURL, dataset)
}  
if (!file.exists("UCI HAR Dataset")) { 
  unzip(filename) 
}

##load activity labels##
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
activityLabels[,2] <- as.character(activityLabels[,2])
features <- read.table("UCI HAR Dataset/features.txt")
features[,2] <- as.character(features[,2])

#extracting mean and SD from data#
dtfeatures <- grep(".*mean.*|.*std.*", features[, 2])
dtfeatures.names <- features[dtfeatures,2]
dtfeatures.names = gsub('-mean', 'Mean', dtfeatures.names)
dtfeatures.names = gsub('-std', 'Std', dtfeatures.names)
dtfeatures.names <- gsub('[-()]', '', dtfeatures.names)

#load datasets and merge together#
xTest <- read.table("UCI HAR Dataset/test/X_test.txt")[dtfeatures]
testActivites <- read.table("UCI HAR Dataset/test/y_test.txt")
testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
test <- cbind(testSubjects, testActivites, xTest)

xTrain <- read.table("UCI HAR Dataset/train/X_train.txt")[dtfeatures]
trainActivites <- read.table("UCI HAR Dataset/train/y_train.txt")
trainSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
train <- cbind(trainSubjects, trainActivites, xTrain)

cData <- rbind(train, test)
colnames(cData) <- c("Subject", "activity", dtfeatures.names)

##activity and subjects are converted to factors##
cData$activity <- factor(cData$activity, levels = activityLabels[,1], labels = activityLabels[,2])
cData$Subject <- as.factor(cData$Subject)

cData.melt <- melt(cData, id = c("Subject", "activity"))
cData.mean <- dcast(cData.melt, Subject + activity ~ variable, mean)

write.table(cData.mean, "tidy.txt", row.names = FALSE, quote = FALSE)
