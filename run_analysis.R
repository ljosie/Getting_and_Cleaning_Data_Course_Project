## Getting and Cleaning Data on Coursera -- Course Project
## Author: Josie.Tao Date: 24/05/2014 
## run_analysis.R that does the following:
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
## 3. Uses descriptive activity names to name the activities in the data set Appropriately
##    labels the data set with descriptive activity names. 
## 4. Creates a second, independent tidy data set with the average of each variable for each 
##    activity and each subject. 

#path relative to the working directory
#where the test data should be extracted.

#read test data
subject_test <- read.table("test/subject_test.txt", quote="\"")
X_test <- read.table("test/X_test.txt", quote="\"")
y_test <- read.table("test/y_test.txt", quote="\"")

#read training data
subject_train <- read.table("train/subject_train.txt", quote="\"")
X_train <- read.table("train/X_train.txt", quote="\"")
y_train <- read.table("train/y_train.txt", quote="\"")

#read supporting information
features <- read.table("features.txt", quote="\"")
labels <- read.table("activity_labels.txt", quote="\"")

#build tidy subject
data_subject <- rbind(subject_train,subject_test)
colnames(data_subject)[1] <- "Subject"

#build tidy X,y
data_X <- rbind(X_train, X_test)
colnames(data_X) <- features[,2]

data_y <- rbind(y_train, y_test)
#integrate label Names      - This should do the trick for Question 3 & 4
data_y <- merge(x=data_y, y=labels, by=1)
colnames(data_y)[1] <- "Result"
colnames(data_y)[2] <- "ResultName"

subject <- rbind(subject_train, subject_test)
colnames(subject)[1] <- "Subject"

#Build one big Dataset
data <- cbind(subject,data_y,data_X)
#This should finish Question 1

#Keep only the first 3 columns and everything labled mean() or std()
colsToKeep <- c(1,2,3,grep("mean\\(\\)|std\\(\\)",colnames(data),ignore.case=TRUE))

data <- data[,colsToKeep]
#This should finsih Question 2

#build tidy result set as aggegate
#exclude first three columns, we use those for grouping
tidy <- aggregate.data.frame(
        x=data[,c(-1,-2,-3)], 
        by=list(
                Subject=data$Subject, 
                Result=data$Result, 
                ResultName=data$ResultName), 
        mean)

#Write result to a file
write.table(x=tidy,file="tidy_data.txt", sep=",")