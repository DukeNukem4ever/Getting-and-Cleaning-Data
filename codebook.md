# Getting and Cleaning Data Course Project Documentation

# Created By Artyom Orekhov (a.k.a. DukeNukem4ever)

# Purpose
The purpose describes the variables, the data, and any transformations or work that is performed to clean up said data and get the file we need.

# Location of Source Data
[Here you can find a complete description of the data used in the project](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

[And here is the source data for this project](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

# Step 1: Merging
First of all, it was important to merge the main txt files into one dataset for further work.
The following files have been read separately from each other:
- x_train.txt
- y_train.txt
- subject_train.txt
- x_test.txt
- y_test.txt
- subject_test.txt
- features.txt
- activity_labels.txt

Following that, the test and train datasets had been merged into a single table with the help of rbind function.

# Step 2: Finding mean and standard deviation measurements
The only things that were currently needed to pull from the table are only the mean and standard deviation measurements. This task has been accomplished with the help of the grep function.

# Step 3: Setting activity names in the data set
Data subset had been joined with the activityType table to include the descriptive activity names. 

# Step 4: Setting labels on the dataset with descriptive variable names
The gsub function proved to be very useful for cleaning up the variable names with special characters in between.

# Step 5: Creating a second tidy data set with the average of each variable for each activity and each subject.
A single table containing the averages and means was created with the help of the aggregate function for the variables.
