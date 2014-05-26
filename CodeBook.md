Getting_and-Cleaning_Data_Course_Project
========================================
## Human Activity Using Smartphones Summary Tidy Dataset Version 1.0

### Here are some background info on the original data:

> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (`WALKING`, `WALKING_UPSTAIRS`, `WALKING_DOWNSTAIRS`, `SITTING`, `STANDING`, `LAYING`) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See `features_info.txt` for more details.
Data Source: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
The Actual Data itself: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Check the README.txt file for further details about this dataset.

### The dataset includes the following file
tidy_data.txt: The summarized tidy dataset transformed from the original as described below.

### The original data was transformed by

1. Combining the test and training data from the original dataset
2. Selecting mean and standard deviation of select features (focusing on those losest to the raw data) - more below.
3. Adding meaningful labels.
4. Bulding a tidy data table showing the averag mean and standard deviation of the selected variables across the dataset.

### How the variables were selected

Because most of the features in the riginal dataset were derived or estimated to 2nd or 3rd order from the original dataset, I chose to focus on the measurements most closely related to the original data collected by the accelerometer and gyroscope - tBodyAcc and tBodyGyro. These are also estimates calculated after an attempt to correct for gravity, but I felt this was a reasonable compromise as a result of my zero familiarity with these sorts of data.

As a result, the variables remaining are just the calculatd means and standard deviations of these to sets of data - one each for the X, Y and Z dimensions:

* tBodyAcc-X
* tBodyAcc-Y
* tBodyAcc-Z
* tBodyGyro-X
* tBodyGyro-Y
* tBodyGyro-Z

Each of these has a mean and standard deviation version. Examples:

* tBodyAcc-mean()-X: Mean of base body acceleration data in the X dimension
* tBodyGyro-std()-Y: Standard deviation of base body gyroscope measurement in the Y dimension
