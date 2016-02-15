library(data.table)
xtest <- read.table("./UCI HAR Dataset/test/X_test.txt")
ytest <- read.table("./UCI HAR Dataset/test/Y_test.txt")
subjecttest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
xtrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
ytrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
subjecttrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")

xdata <- rbind(xtest, xtrain)
ydata <- rbind(ytest, ytrain)

features <- read.table("./UCI HAR Dataset/features.txt", col.names=c("featureid", "featurelabel"))
activities <- read.table("./UCI HAR Dataset/activity_labels.txt",col.names=c("activityid","activitylabel"))

activities$activitylabel <- tolower(gsub("_", "", activities$activitylabel))
names(ydata) = "activityid"
featureIndex <- grep("mean\\(\\)|std\\(\\)", features$featurelabel)

subjectdata <- rbind(subjecttest, subjecttrain)
names(subjectdata) = "subjectid"
xdata <- xdata[,featureIndex]
names(xdata) <- gsub("\\(|\\)", "", features$featurelabel[featureIndex])
names(xdata) <- gsub("-", "", names(xdata)) 
activity <- merge(ydata, activities, by="activityid")$activitylabel

mergedata <- cbind(subjectdata,activity,xdata)
write.table(mergedata,"tidydata.txt", row.name=FALSE)

DT <- data.table(mergedata)
result <- DT[, lapply(.SD, mean), by=c("subjectid", "activity")]
write.table(result, "calculated_tidydata.txt", row.name=FALSE)