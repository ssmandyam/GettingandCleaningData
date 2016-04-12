Date: April 11, 2016
Author: S Mandyam

This codebook describes the tidy data set produced from cleansing the data originally generated from the UCI Samsung Accelerometer experiment. The tidy data was created by the script, run_analysis.R  created for an assignment in the "Getting and Cleaning Data" Coursera lesson.

The original data source package can be found at the following location: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

More details on the UCI Samsumg Accelerometer project can be found at the following location: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The following data sets were used from the original data source package to create the tidy data set

- train/subject_train.txt -> subjects (IDs) who participated and produced the training data set
- test/subject_test.txt -> subjects (IDs) who participated and produced the test data set
- features.txt -> List of all features that were measured
- train/X_train.txt -> the actual train data set
- test/X_test.txt -> the actual test data set
- train/y_train.txt -> training labels
- test/y_test.txt -> test labels
- activity_labels.txt -> links the class labels (in y_training and y_test) with their activity names
The tidy data set consists of the following IDs and variables.

Identifiers 

Identifies the variables by a subject identifier and/or an activity type

name: subject 
class: integer	
range: [1-30]

name: activity 
class: char	
range: "LAYING",  "SITTING",  "STANDING", "WALKING", "WALKING_DOWNSTAIRS", "WALKING_UPSTAIRS

Variables

There are 561 features which are described in the features.txt file contained in the original data source package. There are a combined 10299 observations of each feature across all subjects and activities in the original package. The tidy data set contains only the "mean()" and "std()" features. The value for each feature is the average for each activity and subject:. 

The following are the 79 feature/variable names in the tidy data set

tBodyAcc-mean()-X
tBodyAcc-mean()-Y
tBodyAcc-mean()-Z
tGravityAcc-mean()-X
tGravityAcc-mean()-Y
tGravityAcc-mean()-Z
tBodyAccJerk-mean()-X
tBodyAccJerk-mean()-Y
tBodyAccJerk-mean()-Z
tBodyGyro-mean()-X
tBodyGyro-mean()-Y
tBodyGyro-mean()-Z
tBodyGyroJerk-mean()-X
tBodyGyroJerk-mean()-Y
tBodyGyroJerk-mean()-Z
tBodyAccMag-mean()
tGravityAccMag-mean()
tBodyAccJerkMag-mean()
tBodyGyroMag-mean()
tBodyGyroJerkMag-mean()
fBodyAcc-mean()-X
fBodyAcc-mean()-Y
fBodyAcc-mean()-Z
fBodyAcc-meanFreq()-X
fBodyAcc-meanFreq()-Y
fBodyAcc-meanFreq()-Z
fBodyAccJerk-mean()-X
fBodyAccJerk-mean()-Y
fBodyAccJerk-mean()-Z
fBodyAccJerk-meanFreq()-X
fBodyAccJerk-meanFreq()-Y
fBodyAccJerk-meanFreq()-Z
fBodyGyro-mean()-X
fBodyGyro-mean()-Y
fBodyGyro-mean()-Z
fBodyGyro-meanFreq()-X
fBodyGyro-meanFreq()-Y
fBodyGyro-meanFreq()-Z
fBodyAccMag-mean()
fBodyAccMag-meanFreq()
fBodyBodyAccJerkMag-mean()
fBodyBodyAccJerkMag-meanFreq()
fBodyBodyGyroMag-mean()
fBodyBodyGyroMag-meanFreq()
fBodyBodyGyroJerkMag-mean()
fBodyBodyGyroJerkMag-meanFreq()
tBodyAcc-std()-X
tBodyAcc-std()-Y
tBodyAcc-std()-Z
tGravityAcc-std()-X
tGravityAcc-std()-Y
tGravityAcc-std()-Z
tBodyAccJerk-std()-X
tBodyAccJerk-std()-Y
tBodyAccJerk-std()-Z
tBodyGyro-std()-X
tBodyGyro-std()-Y
tBodyGyro-std()-Z
tBodyGyroJerk-std()-X
tBodyGyroJerk-std()-Y
tBodyGyroJerk-std()-Z
tBodyAccMag-std()
tGravityAccMag-std()
tBodyAccJerkMag-std()
tBodyGyroMag-std()
tBodyGyroJerkMag-std()
fBodyAcc-std()-X
fBodyAcc-std()-Y
fBodyAcc-std()-Z
fBodyAccJerk-std()-X
fBodyAccJerk-std()-Y
fBodyAccJerk-std()-Z
fBodyGyro-std()-X
fBodyGyro-std()-Y
fBodyGyro-std()-Z
fBodyAccMag-std()
fBodyBodyAccJerkMag-std()
fBodyBodyGyroMag-std()
fBodyBodyGyroJerkMag-std()

