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

There are 561 features which are described in the features.txt file contained in the original data source package. There are a combined 10299 observations of each feature across all subjects and activities in the original package. The tidy data set contains the mean value of these features. 

The original feature list contained 84 duplicate feature names for variables. The duplicate names were deduped by appending "_dupe<position>" to the original feature name. The <position> value indicates the row # in the original feature.lxt file.

The following are the de-duplicated names in the tidy data set
fBodyAcc-bandsEnergy()-1,8_dupe317
fBodyAcc-bandsEnergy()-9,16_dupe318
fBodyAcc-bandsEnergy()-17,24_dupe319
fBodyAcc-bandsEnergy()-25,32_dupe320
fBodyAcc-bandsEnergy()-33,40_dupe321
fBodyAcc-bandsEnergy()-41,48_dupe322
fBodyAcc-bandsEnergy()-49,56_dupe323
fBodyAcc-bandsEnergy()-57,64_dupe324
fBodyAcc-bandsEnergy()-1,16_dupe325
fBodyAcc-bandsEnergy()-17,32_dupe326
fBodyAcc-bandsEnergy()-33,48_dupe327
fBodyAcc-bandsEnergy()-49,64_dupe328
fBodyAcc-bandsEnergy()-1,24_dupe329
fBodyAcc-bandsEnergy()-25,48_dupe330
fBodyAcc-bandsEnergy()-1,8_dupe331
fBodyAcc-bandsEnergy()-9,16_dupe332
fBodyAcc-bandsEnergy()-17,24_dupe333
fBodyAcc-bandsEnergy()-25,32_dupe334
fBodyAcc-bandsEnergy()-33,40_dupe335
fBodyAcc-bandsEnergy()-41,48_dupe336
fBodyAcc-bandsEnergy()-49,56_dupe337
fBodyAcc-bandsEnergy()-57,64_dupe338
fBodyAcc-bandsEnergy()-1,16_dupe339
fBodyAcc-bandsEnergy()-17,32_dupe340
fBodyAcc-bandsEnergy()-33,48_dupe341
fBodyAcc-bandsEnergy()-49,64_dupe342
fBodyAcc-bandsEnergy()-1,24_dupe343
fBodyAcc-bandsEnergy()-25,48_dupe344
fBodyAccJerk-bandsEnergy()-1,8_dupe396
fBodyAccJerk-bandsEnergy()-9,16_dupe397
fBodyAccJerk-bandsEnergy()-17,24_dupe398
fBodyAccJerk-bandsEnergy()-25,32_dupe399
fBodyAccJerk-bandsEnergy()-33,40_dupe400
fBodyAccJerk-bandsEnergy()-41,48_dupe401
fBodyAccJerk-bandsEnergy()-49,56_dupe402
fBodyAccJerk-bandsEnergy()-57,64_dupe403
fBodyAccJerk-bandsEnergy()-1,16_dupe404
fBodyAccJerk-bandsEnergy()-17,32_dupe405
fBodyAccJerk-bandsEnergy()-33,48_dupe406
fBodyAccJerk-bandsEnergy()-49,64_dupe407
fBodyAccJerk-bandsEnergy()-1,24_dupe408
fBodyAccJerk-bandsEnergy()-25,48_dupe409
fBodyAccJerk-bandsEnergy()-1,8_dupe410
fBodyAccJerk-bandsEnergy()-9,16_dupe411
fBodyAccJerk-bandsEnergy()-17,24_dupe412
fBodyAccJerk-bandsEnergy()-25,32_dupe413
fBodyAccJerk-bandsEnergy()-33,40_dupe414

