# set path to the data
dataPath = '~/GitHub/getdata-006/CourseProject/data/UCI HAR Dataset/'
setwd (dataPath)

# load x and y for Test and Train
train = read.csv('./train/X_train.txt', sep="", header=FALSE)
train[,562] = read.csv('./train/y_train.txt', sep="", header=FALSE)
train[,563] = read.csv('./train/subject_train.txt', sep="", header=FALSE)
test = read.csv('./test/X_test.txt', sep="", header=FALSE)
test[,562] = read.csv('./test/y_test.txt', sep="", header=FALSE)
test[,563] = read.csv('./test/subject_test.txt', sep="", header=FALSE)

## 1.Merges the training and the test sets to create one data set
allData = rbind(train, test) 

# load variable names and correctly name the columns of the data
features = read.csv("features.txt", sep=" ",  header=FALSE)
colnames(allData) <- tolower(c(as.character(features$V2),'Activity','Subject'))

## 2.Extracts only the measurements on the mean and standard deviation for each measurement
ColsWeNeed <- c(grep(".*-mean.*|.*-std.*", colnames(allData)),562,563)
allData <- allData[,ColsWeNeed]

## 3.Uses descriptive activity names to name the activities in the data set 
activityLabels = read.table("activity_labels.txt", sep=""); 
for(a in 1:6) {
  inds = which(allData$activity==a)
  allData$activity[inds] <- as.character(activityLabels[a,2])
}

## 4. Appropriately labels the data set with descriptive variable names.
# remove "-()" expression from var names and save result data set

colnames(allData) <- gsub('[-()]','',colnames(allData))
write.table(allData, "result.txt", sep="\t",row.name=FALSE)

## 5. Create a second, independent tidy data set with the average 
## of each variable for each activity and each subject. 

tidy = aggregate(allData, by=list(activity = allData$activity, subject=allData$subject), mean)
write.table(tidy, "tidy.txt", sep="\t",row.name=FALSE)
