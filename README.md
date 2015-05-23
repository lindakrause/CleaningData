# Cleaning Data

The purpose of this project is to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The steps taken in run_analysis.R are the following:

Read in the training data from the folder ./UCI HAR Dataset/train (X_train.txt, Y_train.txt, subject_train.txt)
   -  X has the feature data, Y has the activity data, subject has the subject number
   
Read in the test data from the folder ./UCI HAR Dataset/test (X_test.txt, Y_test.txt, subject_test.txt)

Read in supporting data from the folder ./UCI HAR Dataset (features.txt and activity_labels.txt)

Merge the training and test feature data, training and test activity data, and training and test subject data (appends rows).

Name the columns in the feature data using the features meta data in features.txt.

Give descriptive columns names for the activity ad subject data.

Merge all of the data (feature, activity and subject) to create one data set (appends columns).

Extract only the columns on the mean and standard deviation for each measurement, along with Activity and Subject columns.

Give descriptive activity names to name the activities in the data set using the activity labels in activity_labels.txt.

Appropriately label the data set with descriptive variable names. Replacing acronyms with full names.
  - Acc = Accelerometer
  - Gyro = Gyroscope
  - Mag = Magnitude
  
Change beginning characters f, t to Frequency and Time, respectively, in the variable names.

Create a second, independent tidy data set with the average of each variable for each activity and each subject and write this to a file.
