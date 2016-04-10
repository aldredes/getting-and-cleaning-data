# Getting and Cleaning Data - Course Project

## Overview

This project aims to demonstrate the ability to collect, work with, and clean a data set, and prepare a tidy data that can be used for subsequent analysis.  A full description of the data used in this project can be found at The UCI Machine Learning Repository, Human Activity Recognition Using Smartphones Data Set (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

[The source data for this project can be obtained here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

Some of the dataset used for this project includes the following files:

* 'features.txt': List of all features.
* 'activity_labels.txt': Links the class labels with their activity name.
* 'train/X_train.txt': Training set.
* 'train/y_train.txt': Training labels.
* 'test/X_test.txt': Test set.
* 'test/y_test.txt': Test labels.
* 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
* 'test/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 


## Project Summary

This project requires to create one R script called run_analysis.R that does the following:

1) Merges the training and the test sets to create one data set.
2) Extracts only the measurements on the mean and standard deviation for each measurement. 
3) Uses descriptive activity names to name the activities in the data set
4) Appropriately labels the data set with descriptive activity names. 
5) Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

In my implementation of R script, the order of steps were followed.  Prior to running this script, the data set should be downloaded and extracted in the current working directory  wherein the folder "UCI HAR Dataset" is at the same level of this script. The final summarized tidy data set (that consists of the average (mean) value of each variable per subject and activity) is saved as file 'tidy_avg.csv.'

Additional information about the variables, data and transformations can be seen in CODEBOOK.md.
