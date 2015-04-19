run_analysis <- function()

setwd("C:/Users/Anna/Documents/Data Science Series/data/UCI HAR Dataset/")


##Read in the data
X_test <- read.table("./test/X_test.txt")
y_test <- read.table("./test/y_test.txt")
subject_test <- read.table("./test/subject_test.txt")

X_train <- read.table("./train/X_train.txt")
y_train <- read.table("./train/y_train.txt")
subject_train <- read.table("./train/subject_train.txt")

activity_labels <- read.table("activity_labels.txt")
features <- read.table("features.txt")

## change the column names
colnames(X_train) <- features$V2
colnames(X_test) <-features$V2

##Combine test and train data into one data set
data <- rbind(cbind(y_train,X_train), cbind(y_test,X_test))
 

##Extract columns with mean and std
meandata = data[grepl("mean[()]",names(data))]
stddata = data[grepl("std[()]",names(data))]
activitydata = data[grepl("V1",names(data))]

##Modify names to be more tidy
temp = tolower(names(meandata))
names(meandata) <- temp
temp = tolower(names(stddata))
names(stddata) <- temp

temp <- sub("-mean\\(\\)","mean",names(meandata))
names(meandata) <- temp
temp <- sub("-","",names(meandata))
names(meandata) <- temp
temp <- sub("f","freq",names(meandata))
names(meandata) <- temp
temp = sub("t","time",names(meandata))
names(meandata) <- temp

temp <- sub("-std\\(\\)","std",names(stddata))
names(stddata) <- temp
temp <- sub("-","",names(stddata))
names(stddata) <- temp
temp = sub("f","freq",names(stddata))
names(stddata) <- temp
temp <- sub("t","time",names(stddata))
names(stddata) <-temp

##Replace numbers with activity levels
activitydata = replace(activitydata,activitydata==1,"Walking")
activitydata = replace(activitydata,activitydata==2,"Walking Upstairs")
activitydata = replace(activitydata,activitydata==3,"Walking Downstairs")
activitydata = replace(activitydata,activitydata==4,"Sitting")
activitydata = replace(activitydata,activitydata==5,"Standing")
activitydata = replace(activitydata,activitydata==6,"Laying")


##Combine temp1 and temp2 to include mean() and std()
##Add back in activity column.  Return data
data2 <- cbind(meandata,stddata)
data <- cbind(activitydata,data2)


## Change first column name to activity.  
temp <- sub("V1","activity",names(data))
names(data) <- temp

## Add subject data column name and change name to subject.
data <- cbind(rbind(subject_train,subject_test),data)
temp <- sub("V1","subject",names(data))
names(data) <- temp

