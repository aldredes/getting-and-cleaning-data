##########################################################################################################################################################
## run_analysis.R File Description:
##
## This script will perform the following steps on the UCI HAR Dataset downloaded from 
## https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
## The datasets should be already unzipped in the current working directory wherein 
## the folder "UCI HAR Dataset" is at the same level of this script.
## 
## The following are the summary of steps:
##  	1.	Merges the training and the test sets to create one data set.
##		2.	Extracts only the measurements on the mean and standard deviation for each measurement.
##		3.	Uses descriptive activity names to name the activities in the data set
##		4.	Appropriately labels the data set with descriptive variable names.  
##		5.	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
##
##########################################################################################################################################################

rm(list=ls()) # Clean up workspace
library(reshape2) # Load reshape2 library

# Read in data from files: load the features and activities
features <- read.table('./UCI HAR Dataset/features.txt') 
features[,2] <- as.character(features[,2])
activityLabels <- read.table('./UCI HAR Dataset/activity_labels.txt') 
activityLabels[,2] <- as.character(activityLabels[,2])

# --------------------------------------------------------------------------------------------------------------------------------------------------------
# 1. Merge the training and the test sets to create one data set.

# Read in data from files: train data sets
train.subject <- read.table("./UCI HAR Dataset/train/subject_train.txt")
train.activity <- read.table("./UCI HAR Dataset/train/y_train.txt")
train.set <- read.table("./UCI HAR Dataset/train/x_train.txt")
train <- cbind(train.subject, train.activity, train.set)

# Read in data from files: test data sets
test.subject <- read.table("./UCI HAR Dataset/test/subject_test.txt")
test.activity <- read.table("./UCI HAR Dataset/test/Y_test.txt")
test.set <- read.table("./UCI HAR Dataset/test/X_test.txt")
test <- cbind(test.subject, test.activity, test.set)

# Merge data sets as one data set, and add column names
mergedData <- rbind(train, test)
colnames(mergedData) <- c("subject", "activity", features[,2])

# --------------------------------------------------------------------------------------------------------------------------------------------------------
# 2. Extract only the measurements on the mean and standard deviation for each measurement.

# Get the indices of the features for the mean and standard deviation
featuresToExtract <- grep(".*mean.*|.*std.*", features[,2])

# Adjust it to include the first two for subject and activity respectively
featuresToExtract <- featuresToExtract + 2
featuresToExtract <- c(1,2, featuresToExtract)

# Apply it to the merged data
mergedData <- mergedData[featuresToExtract]

# --------------------------------------------------------------------------------------------------------------------------------------------------------
# 3. Uses descriptive activity names to name the activities in the data set

# Set activities into factors with labels
mergedData$activity <- factor(mergedData$activity, levels = activityLabels[,1], labels = activityLabels[,2])

# --------------------------------------------------------------------------------------------------------------------------------------------------------
# 4. Appropriately labels the data set with descriptive variable names. 

# Rename features/column names as more readable and descriptive labels 
featuresToExtract.newLabels <- colnames(mergedData)
featuresToExtract.newLabels <- gsub('-mean', 'Mean', featuresToExtract.newLabels) 
featuresToExtract.newLabels <- gsub('-std', 'StdDev', featuresToExtract.newLabels) 
featuresToExtract.newLabels <- gsub("^(t)","time", featuresToExtract.newLabels) 
featuresToExtract.newLabels <- gsub("^(f)","fdom", featuresToExtract.newLabels) 
featuresToExtract.newLabels <- gsub("Mag","Magnitude", featuresToExtract.newLabels) 
featuresToExtract.newLabels <- gsub("Acc","Accelerometer", featuresToExtract.newLabels) 
featuresToExtract.newLabels <- gsub("Gyro","Gyroscope", featuresToExtract.newLabels) 
featuresToExtract.newLabels <- gsub('[-()]', '', featuresToExtract.newLabels) 
colnames(mergedData) <- featuresToExtract.newLabels

# --------------------------------------------------------------------------------------------------------------------------------------------------------
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

# Turn subject into factors then melt the data with subject and activity (activity is already factored in Step #3)
mergedData$subject <- as.factor(mergedData$subject)
mergedData.melted <- melt(mergedData, id = c("subject", "activity"))

# Compute the aveage of each variables per subject and activity 
mergedData.mean <- dcast(mergedData.melted, subject + activity ~ variable, mean)

# Export both final tidy data set and its averaged data set per subject and activity
# ! omit the comment below if you want to export all data 
# write.table(mergedData, file = "tidy_all.txt", quote = FALSE, row.names = FALSE)
write.table(mergedData.mean, file = "tidy_avg.txt", quote = FALSE, row.names = FALSE)
message("Data has been saved as tidy*.txt.")

##########################################################################################################################################################
## END OF SCRIPT
##########################################################################################################################################################