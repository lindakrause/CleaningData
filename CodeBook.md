#Code Book

This code book describes the variables, the data, and transformations performed to clean up data collected from the accelerometers from the Samsung Galaxy S smartphone.

The data comes from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.


The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

        tBodyAcc-XYZ
        tGravityAcc-XYZ
        tBodyAccJerk-XYZ
        tBodyGyro-XYZ
        tBodyGyroJerk-XYZ
        tBodyAccMag
        tGravityAccMag
        tBodyAccJerkMag
        tBodyGyroMag
        tBodyGyroJerkMag
        fBodyAcc-XYZ
        fBodyAccJerk-XYZ
        fBodyGyro-XYZ
        fBodyAccMag
        fBodyAccJerkMag
        fBodyGyroMag
        fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

        mean(): Mean value
        std(): Standard deviation
        mad(): Median absolute deviation 
        max(): Largest value in array
        min(): Smallest value in array
        sma(): Signal magnitude area
        energy(): Energy measure. Sum of the squares divided by the number of values. 
        iqr(): Interquartile range 
        entropy(): Signal entropy
        arCoeff(): Autorregresion coefficients with Burg order equal to 4
        correlation(): correlation coefficient between two signals
        maxInds(): index of the frequency component with largest magnitude
        meanFreq(): Weighted average of the frequency components to obtain a mean frequency
        skewness(): skewness of the frequency domain signal 
        kurtosis(): kurtosis of the frequency domain signal 
        bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
        angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

        gravityMean
        tBodyAccMean
        tBodyAccJerkMean
        tBodyGyroMean
        tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'

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









