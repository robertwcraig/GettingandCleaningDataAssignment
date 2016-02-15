library(data.table)
xtest <- read.table("./data/test/X_test.txt")
ytest <- read.table("./data/test/Y_test.txt")
subjecttest <- read.table("./data/test/subject_test.txt")
xtrain <- read.table("./data/train/X_train.txt")
ytrain <- read.table("./data/train/y_train.txt")
subjecttrain <- read.table("./data/train/subject_train.txt")

xdata <- rbind(xtest, xtrain)
ydata <- rbind(ytest, ytrain)

features <- read.table("./data/features.txt", col.names=c("featureid", "featurelabel"))
activities <- read.table("./data/activity_labels.txt",col.names=c("activityid","activitylabel"))

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