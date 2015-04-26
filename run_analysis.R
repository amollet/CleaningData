library(dplyr)

#All urls needed
subjectTestUrl = "UCI HAR Dataset/test/subject_test.txt"
subjectTrainingUrl = "UCI HAR Dataset/train/subject_train.txt"

XtestUrl = "UCI HAR Dataset/test/X_test.txt"
XtrainUrl = "UCI HAR Dataset/train/X_train.txt"

YtestUrl = "UCI HAR Dataset/test/y_test.txt"
YtrainUrl = "UCI HAR Dataset/train/Y_train.txt"

colNameUrl = "UCI HAR Dataset/features.txt"

activityLabelsUrl <- "UCI HAR Dataset/activity_labels.txt"

#Load all the files
subjectTest = read.table(subjectTestUrl)
subjectTrain = read.table(subjectTrainingUrl)

XTest = read.table(XtestUrl)
XTrain = read.table(XtrainUrl)

YTest = read.table(YtestUrl)
YTrain = read.table(YtrainUrl)

colNames = read.table(colNameUrl)
activityLabels = read.table(activityLabelsUrl)

#Aggregate the data
Test = cbind(subjectTest,YTest,XTest)
Train = cbind(subjectTrain,YTrain,XTrain)

data=rbind(Test,Train)

#Rename the columns
names(data) <- c("Subject","Activity",as.character(colNames$V2))

#Select only the columns with mean and std in their name
meanColumns = grep("mean",names(data))
stdColumns = grep("std",names(data))

data<-data[,c(1,2,meanColumns,stdColumns)]

#
data$Activity <- factor(data$Activity,levels =activityLabels$V1 ,labels = activityLabels$V2)

#Get rid of () in names
names(data) <- gsub( "\\(\\)","" ,names(data))
#Get rid of - in names
names(data) <- gsub( "-","" ,names(data))
#All to lower case
names(data) <- tolower(names(data))

#Take the mean by subject and by activity of the variables

result <- aggregate(data[, 3:length(data)], list(data$subject,data$activity), mean)
names(result)[1] <- "subject"
names(result)[2] <- "activity"
#Write to File
write.table(result,file="results.txt",row.names=FALSE)

