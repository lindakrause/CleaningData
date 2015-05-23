#Code Book

This code book describes the variables, the data, and transformations performed to clean up data collected from the accelerometers from the Samsung Galaxy S smartphone.

The data comes from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

8 files were used from this data set:

./UCI HAR Dataset/train/X_train.txt (contains feature data,  7352 obs. of  561 variables)

./UCI HAR Dataset/train/Y_train.txt (contains activity data,  7352 obs. of  1 variable)

./UCI HAR Dataset/train/subject_train.txt (contains subject data, 7352 obs. of  1 variable)

./UCI HAR Dataset/test/X_test.txt (contains feature data,  2947 obs. of  561 variables)

./UCI HAR Dataset/test/Y_test.txt (contains activity data,  2947 obs. of  1 variable)

./UCI HAR Dataset/test/subject_test.txt (contains subject data, 2947 obs. of  1 variable)

./UCI HAR Dataset/features.txt (contains meta data on the features, 561 obs. of  2 variables)

./UCI HAR Dataset/activity_labels.txt (contains meta data on the activities, 6 obs. of  2 variables)

Feature test and train data were merged (appended rows). 10299 obs. of  561 variables

Activity test and train data were merged (appended rows). 10299 obs. of  1 variable

Subject test and train data were merged (appended rows). 10299 obs. of  1 variable

The column names of the feature data were changed using the meta data on the features.

Descriptive names of "Activity" and "Subject" were given to the activity and subject data, respectively.

Feature, Activity and Subject data were merged (appended columns). 10299 obs. of  563 variables

Columns that contained mean and standard deviation information were extracted out, along with the Activity and Subject data. 10299 obs. of  88 variables

Descriptive variable names were given, by replacing acronyms with full names. (Acc = Accelerometer, Gyro = Gyroscope, Mag = Magnitude)

Changed variable names with beginning characters, f and t, to Frequency and Time, respectively.

Created a second, independent tidy data set with the average of each variable for each activity and each subject and wrote this to a file FinalTidyData.txt.
180 obs. of  88 variables









