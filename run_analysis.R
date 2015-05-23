# Read in the train data 
	Xtrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
	Ytrain <- read.table("./UCI HAR Dataset/train/Y_train.txt")
	subjectTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")

# Read in the test data
	Xtest <- read.table("./UCI HAR Dataset/test/X_test.txt")
	Ytest <- read.table("./UCI HAR Dataset/test/Y_test.txt")
	subjectTest <- read.table("./UCI HAR Dataset/test/subject_test.txt")

# Read in supporting data
	features <- read.table("./UCI HAR Dataset/features.txt")
	activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt", header = FALSE)

# Merges the training, test and subject sets (appends rows).
	featureValues <- rbind(Xtrain, Xtest)
	activityValues <- rbind(Ytrain, Ytest)
	subjectValues <- rbind (subjectTrain, subjectTest)

# Name the columns using the features meta data.
	names(featureValues) <- features[, 2]

# Give descriptive columns names for the Activity and Subject
	colnames(activityValues) <- "Activity"
	colnames(subjectValues) <- "Subject"

# Merges all of the data to create one data set (appends columns).
	allValues <- cbind(featureValues,activityValues,subjectValues)

# Extract only the measurements on the mean and standard deviation for each measurement.
# Also, extract Activity and Subject columns.
	columns <- grep("*mean*|*std*|Activity|Subject", names(allValues), ignore.case=TRUE)
	extractedValues <- allValues[,columns]

# Use descriptive activity names to name the activities in the data set using the activity labels.
	for (i in 1:6){
		extractedValues$Activity[extractedValues$Activity == i] <- as.character(activityLabels[i,2])
	}

# Appropriately labels the data set with descriptive variable names. Replacing acronyms with full names.
# Acc = Accelerometer
# Gyro = Gyroscope
# Mag = Magnitude
	names(extractedValues)<-gsub("Acc", "Accelerometer", names(extractedValues))
	names(extractedValues)<-gsub("Gyro", "Gyroscope", names(extractedValues))
	names(extractedValues)<-gsub("Mag", "Magnitude", names(extractedValues))

# Change beginning characters f, t to Frequency and Time, respectively.
	names(extractedValues)<-gsub("^t", "Time", names(extractedValues))
	names(extractedValues)<-gsub("^f", "Frequency", names(extractedValues))

# Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
	finalTidyData <- aggregate(. ~Activity + Subject, extractedValues, mean)
	write.table(finalTidyData, file = "TidyDataSet.txt", row.names = FALSE)
