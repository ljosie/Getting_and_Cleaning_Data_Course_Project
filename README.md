Getting_and-Cleaning_Data_Course_Project
========================================

### This project is for Getting and Cleaning Data (Peer Assessment).

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

### Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

### You should create one R script called run_analysis.R that does the following. 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

###Files in this repo:

- `README.md` - See this file.
- `Codebook.md` - Description of the data in the dataset and any transforms performed.
- `run_analysis.R` - R script contains the steps data processing.

To use this script the data (or any data with the same structure) should be placed in the working directory.

The output file is a comma-separated file called `tidy_data.txt`.
